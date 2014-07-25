Getting_and_Cleaning_Data_Assignment_1
======================================
Coursera Getting and Cleaning Data Assignment 1

 Description: Prepare tidy data that can be used for later analysis. A full description of the
              dataset is at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

              The data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

			  All work is done via a single R script: run_analysis.R
			  
              6 tasks are accomplished in the script:
 
			    1. Download and unzip the ZIP file mentioned above. The ZIP file contains
				   details about the description of the contents of each file.
                2. Merge the training and the test sets to create one data set.
                3. Extract only the measurements on the mean and standard deviation for each measurement. 
                4. Use descriptive activity names to name the activities in the data set
                5. Appropriately label the data set with descriptive variable names. 
                6. Create a second, independent tidy data set with the average of each 
				   variable for each activity and each subject. The results are saved
				   in a CSV diskfile called tidyData.csv


 History:     2014-July-11 - Dwight Kruger - Original Version
 
 The code-book / data dictionary for the resulting tidy dataset is described in 
 codebook.md