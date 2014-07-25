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
 
 The code-book / data dictionary for the resulting tidy dataset is as follows:

* Subject: Integer, Subject ID number

* Activity: Integer,                       
  - 1 WALKING
  - 2 WALKING_UPSTAIRS
  - 3 WALKING_DOWNSTAIRS
  - 4 SITTING
  - 5 STANDING
  - 6 LAYING
 
* tBodyAcc-mean-X: Float - Mean body acceleration signal in X dimension
* tBodyAcc-mean-Y: Float - Mean body acceleration signal in Y dimension
* tBodyAcc-mean-Z: Float - Mean body acceleration signal in X dimension
* tBodyAcc-std-X:  Float - Standard deviation of the body acceleration signal in X dimension
* tBodyAcc-std-Y:  Float - Standard deviation of the body acceleration signal in Y dimension
* tBodyAcc-std-Z:  Float - Standard deviation of the body acceleration signal in Z dimension
* tGravityAcc-mean-X: Float - Mean gravity acceleration signal in X dimension
* tGravityAcc-mean-Y: Float - Mean gravity acceleration signal in Y dimension
* tGravityAcc-mean-Z: Float - Mean gravity acceleration signal in X dimension
* tGravityAcc-std-X:  Float - Standard deviation of the gravity acceleration signal in X dimension
* tGravityAcc-std-Y:  Float - Standard deviation of the gravity acceleration signal in Y dimension
* tGravityAcc-std-Z:  Float - Standard deviation of the gravity acceleration signal in Z dimension
* tBodyAccJerk-mean-X: Float - Mean body linear acceleration jerk signal in X dimension        
* tBodyAccJerk-mean-Y: Float - Mean body linear acceleration jerk signal in Y dimension        
* tBodyAccJerk-mean-Z: Float - Mean body linear acceleration jerk signal in Z dimension        
* tBodyAccJerk-std-X:  Float - Standard deviation of the linear acceleration jerk signal in X dimension          
* tBodyAccJerk-std-Y:  Float - Standard deviation of the linear acceleration jerk signal in Y dimension          
* tBodyAccJerk-std-Z:  Float - Standard deviation of the linear acceleration jerk signal in Z dimension          
* tBodyGyro-mean-X: Float - Mean body gyroscope signal in X dimension                    
* tBodyGyro-mean-Y: Float - Mean body gyroscope signal in Y dimension                    
* tBodyGyro-mean-Z: Float - Mean body gyroscope signal in Z dimension                    
* tBodyGyro-std-X:  Float - Standard deviation of the gyroscope signal in X dimension                      
* tBodyGyro-std-Y:  Float - Standard deviation of the gyroscope signal in Y dimension                      
* tBodyGyro-std-Z:  Float - Standard deviation of the gyroscope signal in Z dimension                      
* tBodyGyroJerk-mean-X: Float - Mean body angular velocity jerk signal in X dimension                            
* tBodyGyroJerk-mean-Y: Float - Mean body angular velocity jerk signal in Y dimension                            
* tBodyGyroJerk-mean-Z: Float - Mean body angular velocity jerk signal in Z dimension                            
* tBodyGyroJerk-std-X:  Float - Standard deviation of the angular velocity jerk signal in Y dimension                              
* tBodyGyroJerk-std-Y:  Float - Standard deviation of the angular velocity jerk signal in Z dimension                              
* tBodyGyroJerk-std-Z:  Float - Standard deviation of the angular velocity jerk signal in X dimension                              
* tBodyAccMag-mean: Float - Mean magnitude of body linear acceleration            
* tBodyAccMag-std:  Float - Standard deviation of the magnitude of body linear acceleration                         
* tGravityAccMag-mean: Float - Mean magnitude of gravity acceleration signals                     
* tGravityAccMag-std:  Float - Standard deviation of the magnitude of gravity acceleration signals                                  
* tBodyAccJerkMag-mean: Float - Mean magnitude of the body jerk signals        
* tBodyAccJerkMag-std:  Float - Standard deviation magnitude of the body jerk signals                 
* tBodyGyroMag-mean: Float - Mean magnitude of the angular velocity signals                   
* tBodyGyroMag-std:  Float - Standard deviation magnitude of the angular velocity signals                            
* tBodyGyroJerkMag-mean: Float - Mean magnitude of the angular velocity jerk signals               
* tBodyGyroJerkMag-std:  Float - Standard deviation magnitude of the angular velocity jerk signals                        
* fBodyAcc-mean-X: Float - Mean fast fourier transform body acceleration in X dimension
* fBodyAcc-mean-Y: Float - Mean fast fourier transform body acceleration in Y dimension
* fBodyAcc-mean-Z: Float - Mean fast fourier transform body acceleration in Z dimension 
* fBodyAcc-std-X: Float - Standard deviation fast fourier transform body acceleration in X dimension              
* fBodyAcc-std-Y: Float - Standard deviation fast fourier transform body acceleration in Y dimension              
* fBodyAcc-std-Z: Float - Standard deviation fast fourier transform body acceleration in Z dimension               
* fBodyAcc-meanFreq-X: Float - Weighted average of the frequency components to obtain a mean frequency of body acceleration in X dimension
* fBodyAcc-meanFreq-Y: Float - Weighted average of the frequency components to obtain a mean frequency of body acceleration in Y dimension        
* fBodyAcc-meanFreq-Z: Float - Weighted average of the frequency components to obtain a mean frequency of body acceleration in Z dimension        
* fBodyAccJerk-mean-X: Float - Weighted average of the frequency components to obtain a mean frequency of body acceleration in X dimension         
* fBodyAccJerk-mean-Y: Float - Weighted average of the frequency components to obtain a mean frequency of body acceleration in Y dimension                 
* fBodyAccJerk-mean-Z: Float - Weighted average of the frequency components to obtain a mean frequency of body acceleration in Z dimension                 
* fBodyAccJerk-std-X: Float - Standard deviation of the body linear acceleration in the X dimension          
* fBodyAccJerk-std-Y: Float - Standard deviation of the body linear acceleration in the Y dimension                    
* fBodyAccJerk-std-Z: Float - Standard deviation of the body linear acceleration in the Z dimension                    
* fBodyAccJerk-meanFreq-X: Float - Weighted average of the frequency components to obtain a mean frequency in X dimension
* fBodyAccJerk-meanFreq-Y: Float - Weighted average of the frequency components to obtain a mean frequency in X dimension     
* fBodyAccJerk-meanFreq-Z: Float - Weighted average of the frequency components to obtain a mean frequency in X dimension     
* fBodyGyro-mean-X: Float - Mean fast fourier transform body acceleration in X dimension                           
* fBodyGyro-mean-Y: Float - Mean fast fourier transform body acceleration in Y dimension                                      
* fBodyGyro-mean-Z: Float - Mean fast fourier transform body acceleration in Z dimension                                      
* fBodyGyro-std-X: Float - Standard deviation fast fourier transform body acceleration in X dimension                                       
* fBodyGyro-std-Y: Float - Standard deviation fast fourier transform body acceleration in Y dimension                                                  
* fBodyGyro-std-Z: Float - Standard deviation fast fourier transform body acceleration in Z dimension                                                  
* fBodyGyro-meanFreq-X: Float - Weighted average of the body frequency components to obtain a mean frequency in the X dimension
* fBodyGyro-meanFreq-Y: Float - Weighted average of the body frequency components to obtain a mean frequency in the Y dimension        
* fBodyGyro-meanFreq-Z: Float - Weighted average of the body frequency components to obtain a mean frequency in the Z dimension       
* fBodyAccMag-mean: Float - Mean of body acceleration signals in a signal window sample            
* fBodyAccMag-std: Float - Standard deviation of body acceleration signals in a signal window sample                         
* fBodyAccMag-meanFreq: Float - Weighted average of the frequency components in a signal window sample                    
* fBodyBodyAccJerkMag-mean: Float - Mean of the signals in a signal window sample for the body acceleration
* fBodyBodyAccJerkMag-std:  Float - Standard deviation of the signals in a signal window sample for the body acceleration    
* fBodyBodyAccJerkMag-meanFreq: Float
* fBodyBodyGyroMag-mean: Float       
* fBodyBodyGyroMag-std:  Float        
* fBodyBodyGyroMag-meanFreq: Float   
* fBodyBodyGyroJerkMag-mean: Float   
* fBodyBodyGyroJerkMag-std:  Float    
* fBodyBodyGyroJerkMag-meanFreq: Float 
* angletBodyAccMean,gravity: Float - angle vector obtained by averaging the body acceleration
* angletBodyAccJerkMean,gravityMean: Float angle vector obtained by averaging the acceleration jerk
* angletBodyGyroMean,gravityMean: Float - averaging the signals for the body gyro jerk in a signal window sample
* angletBodyGyroJerkMean,gravityMean: Float - averaging the signals for the body gyro jerk in a signal window sample
* angleX,gravityMean: Float - X angle vector obtained by averaging the gravity signals in a signal window sample 
* angleY,gravityMean: Float - Y angle vector obtained by averaging the gravity signals in a signal window sample 
* angleZ,gravityMean: Float - Z angle vector obtained by averaging the gravity signals in a signal window sample 