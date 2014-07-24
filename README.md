Getting_and_Cleaning_Data_Assignment_1
======================================
Coursera Getting and Cleaning Data Assignment 1

 Description: Prepare tidy data that can be used for later analysis. A full description of the
              dataset is at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

              The data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

              5 tasks are accomplished:
 
                   1. Merge the training and the test sets to create one data set.
                   2. Extract only the measurements on the mean and standard deviation for each measurement. 
                   3. Use descriptive activity names to name the activities in the data set
                   4. Appropriately label the data set with descriptive variable names. 
                   5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 


 History:     2014-July-11 - Dwight Kruger - Original Version
 
 The code-book / data dictionary is as follows:

*Subject: Subject ID number

*Activity:                       
	- 1 WALKING
	- 2 WALKING_UPSTAIRS
	- 3 WALKING_DOWNSTAIRS
	- 4 SITTING
	- 5 STANDING
	- 6 LAYING
 
* tBodyAcc-mean-X: Mean body acceleration signal in X dimension
* tBodyAcc-mean-Y: Mean body acceleration signal in Y dimension
* tBodyAcc-mean-Z: Mean body acceleration signal in X dimension
* tBodyAcc-std-X:  Standard deviation of the body acceleration signal in X dimension
* tBodyAcc-std-Y:  Standard deviation of the body acceleration signal in Y dimension
* tBodyAcc-std-Z:  Standard deviation of the body acceleration signal in Z dimension
* tGravityAcc-mean-X: Mean gravity acceleration signal in X dimension
* tGravityAcc-mean-Y: Mean gravity acceleration signal in Y dimension
* tGravityAcc-mean-Z: Mean gravity acceleration signal in X dimension
* tGravityAcc-std-X: Standard deviation of the gravity acceleration signal in X dimension
* tGravityAcc-std-Y: Standard deviation of the gravity acceleration signal in Y dimension
* tGravityAcc-std-Z: Standard deviation of the gravity acceleration signal in Z dimension
* tBodyAccJerk-mean-X: Mean body linear acceleration jerk signal in X dimension        
* tBodyAccJerk-mean-Y: Mean body linear acceleration jerk signal in Y dimension        
* tBodyAccJerk-mean-Z: Mean body linear acceleration jerk signal in Z dimension        
* tBodyAccJerk-std-X: Standard deviation of the linear acceleration jerk signal in X dimension          
* tBodyAccJerk-std-Y: Standard deviation of the linear acceleration jerk signal in Y dimension          
* tBodyAccJerk-std-Z: Standard deviation of the linear acceleration jerk signal in Z dimension          
* tBodyGyro-mean-X: Mean body gyroscope signal in X dimension                    
* tBodyGyro-mean-Y: Mean body gyroscope signal in Y dimension                    
* tBodyGyro-mean-Z: Mean body gyroscope signal in Z dimension                    
* tBodyGyro-std-X:  Standard deviation of the gyroscope signal in X dimension                      
* tBodyGyro-std-Y:  Standard deviation of the gyroscope signal in Y dimension                      
* tBodyGyro-std-Z:  Standard deviation of the gyroscope signal in Z dimension                      
* tBodyGyroJerk-mean-X: Mean body angular velocity jerk signal in X dimension                            
* tBodyGyroJerk-mean-Y: Mean body angular velocity jerk signal in Y dimension                            
* tBodyGyroJerk-mean-Z: Mean body angular velocity jerk signal in Z dimension                            
* tBodyGyroJerk-std-X:   Standard deviation of the angular velocity jerk signal in Y dimension                              
* tBodyGyroJerk-std-Y:   Standard deviation of the angular velocity jerk signal in Z dimension                              
* tBodyGyroJerk-std-Z:   Standard deviation of the angular velocity jerk signal in X dimension                              
* tBodyAccMag-mean: Mean magnitude of body linear acceleration            
* tBodyAccMag-std:  Standard deviation of the magnitude of body linear acceleration                         
* tGravityAccMag-mean: Mean magnitude of gravity acceleration signals                     
* tGravityAccMag-std:  Standard deviation of the magnitude of gravity acceleration signals                                  
* tBodyAccJerkMag-mean        
* tBodyAccJerkMag-std         
* tBodyGyroMag-mean           
* tBodyGyroMag-std            
* tBodyGyroJerkMag-mean       
* tBodyGyroJerkMag-std        
* fBodyAcc-mean-X             
* fBodyAcc-mean-Y             
* fBodyAcc-mean-Z             
* fBodyAcc-std-X              
* fBodyAcc-std-Y              
* fBodyAcc-std-Z              
* fBodyAcc-meanFreq-X         
* fBodyAcc-meanFreq-Y         
* fBodyAcc-meanFreq-Z         
* fBodyAccJerk-mean-X         
* fBodyAccJerk-mean-Y         
* fBodyAccJerk-mean-Z         
* fBodyAccJerk-std-X          
* fBodyAccJerk-std-Y          
* fBodyAccJerk-std-Z          
* fBodyAccJerk-meanFreq-X     
* fBodyAccJerk-meanFreq-Y     
* fBodyAccJerk-meanFreq-Z     
* fBodyGyro-mean-X            
* fBodyGyro-mean-Y            
* fBodyGyro-mean-Z            
* fBodyGyro-std-X             
* fBodyGyro-std-Y             
* fBodyGyro-std-Z             
* fBodyGyro-meanFreq-X        
* fBodyGyro-meanFreq-Y        
* fBodyGyro-meanFreq-Z        
* fBodyAccMag-mean            
* fBodyAccMag-std             
* fBodyAccMag-meanFreq        
* fBodyBodyAccJerkMag-mean    
* fBodyBodyAccJerkMag-std     
* fBodyBodyAccJerkMag-meanFreq
* fBodyBodyGyroMag-mean       
* fBodyBodyGyroMag-std        
* fBodyBodyGyroMag-meanFreq   
* fBodyBodyGyroJerkMag-mean   
* fBodyBodyGyroJerkMag-std    
* fBodyBodyGyroJerkMag-meanFreq 
 