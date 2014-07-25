# Filename:    run_analysis.R
#
# Description: Prepare tidy data that can be used for later analysis. A full description of the
#              dataset is at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
#              The data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
#              5 tasks are accomplished:
# 
#                   1. Merge the training and the test sets to create one data set.
#                   2. Extract only the measurements on the mean and standard deviation for each measurement. 
#                   3. Use descriptive activity names to name the activities in the data set
#                   4. Appropriately label the data set with descriptive variable names. 
#                   5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
#
#
# History:     2014-July-11 - Dwight Kruger - Original Version
#
run_analysis <- function()
{
    # Get the raw datafile, and unZip it
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    destFile.zip <- "./getdata-projectfiles-UCI_HAR_Dataset.zip"
    download.file(url, destFile.zip)
    
    unzip(destFile.zip, overwrite = TRUE, exdir = ".")
    
    # We should now have a directory called 'UCI HAR Dataset' withe the following directory/files:
    #   test/Inertial Signals/body_acc_x_test.txt
    #   test/Inertial Signals/body_acc_y_test.txt
    #   test/Inertial Signals/body_acc_z_test.txt
    #   test/Inertial Signals/body_gyro_x_test.txt
    #   test/Inertial Signals/body_gyro_y_test.txt
    #   test/Inertial Signals/body_gyro_z_test.txt
    #   test/Inertial Signals/total_acc_x_test.txt
    #   test/Inertial Signals/total_acc_y_test.txt
    #   test/Inertial Signals/total_acc_z_test.txt
    #   test/subject_test.txt
    #   test/X_test.txt
    #   test/y_test.txt
    #   train/Inertial Signals/body_acc_x_train.txt
    #   train/Inertial Signals/body_acc_y_train.txt
    #   train/Inertial Signals/body_acc_z_train.txt
    #   train/Inertial Signals/body_gyro_x_train.txt
    #   train/Inertial Signals/body_gyro_y_train.txt
    #   train/Inertial Signals/body_gyro_z_train.txt
    #   train/Inertial Signals/total_acc_x_train.txt
    #   train/Inertial Signals/total_acc_y_train.txt
    #   train/Inertial Signals/total_acc_z_train.txt
    #   train/subject_train.txt
    #   train/X_train.txt
    #   train/y_train.txt
    #   activity_labels.txt
    #   features.txt
    #   features_info.txt
    #   README.txt 
    
    features = as.vector(read.csv("./UCI HAR Dataset/features.txt", sep="", header = FALSE))[2]
    
    # Step #1: merge the training and the test sets to create one data set.
    mergeData <- mergeDataset("test/X_test.txt", "train/X_train.txt")  
    colnames(mergeData) <- features[,1]
    
    # Step #2: extract only the measurements on the mean and standard deviation for each measurement. 
    #
    #   The mean and standard deviation are denoted by features with suffix mean() and std()
    #   respectively. Find all of the column names with those suffixes.
    features <- colnames(mergeData)
    meanANDstd <- subset(mergeData, select=grepl("*mean*|*std*",features, ignore.case = TRUE))
    
    # Step #3. Create a second, independent tidy data set with the average of each variable 
    # for each activity and each subject. 
    
    # Get the activity labels
    activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("Index", "Activity"))
    
    # Get all of the subjects
    subjects <- mergeDataset("test/subject_test.txt", "train/subject_train.txt")  
    colnames(subjects) = c("ID")
    
    # Get all of the test labels (which activity the subject performed)
    labels <- mergeDataset("test/y_test.txt", "train/y_train.txt")  
    
    # Create a data frame to put all of our results into
    tidyData <- data.frame(rep(NA, 2 + length(colnames(meanANDstd))))[numeric(0)]
    
    # Loop through each of the subjects, and identify their activities
    for (i in sort(unique(subjects[,1])))
    {        
        # Vector 'a' contains the rows in each of the 
        # subsequent tables that contain data for subject i
        a <- subjects$ID == i;

        # For each of the activites, identify which rows contain data for
        # subject i
        for (j in activityLabels$Index)
        {
            b <- labels$V1 == j 
             
            c <- a & b
            d <- meanANDstd[c,]
            tidyRow <- data.frame(Subject=i, Activity=activityLabels[j,2], lapply(d, 2, FUN=mean, na.rm=TRUE))            
            names(tidyRow) <- c("Subject", "Activity", names(meanANDstd))
            
            # Append this row to the data frame
            tidyData <- rbind(tidyData, tidyRow)
        }
    }    
 
    # Clean up the column names so that they are more friendly
    colNames <- colnames(tidyData)
    colNames <- gsub("[*()*]", "", colNames)
    colnames(tidyData) <- colNames
        
    # Write the resulting tide data to an output file
    write.csv(tidyData, file="./tidyData.csv", row.names = FALSE)
    
    tidyData
}

# Description: given two file names, and their feature names, load their datasets and merge them
#
# Input Parameters:
#
#       testFileName  - name of first file
#       trainFileName - name of second file
#
# Output: a dataframe containing the merged datasets
mergeDataset <- function(testFileName, trainFileName)
{
    testFileName <- paste("UCI HAR Dataset", testFileName, sep = "/")
    trainFileName <- paste("UCI HAR Dataset", trainFileName, sep = "/")
    testDataset <- read.csv(testFileName, sep = "", header = FALSE)
    trainDataset <- read.csv(trainFileName, sep = "", header = FALSE)

    mergeData <- rbind(testDataset, trainDataset)
    
    mergeData
}