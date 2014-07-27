CODE BOOK - TIDYSET DATASET

----------------------------------------------------------------------
VARIABLES
----------------------------------------------------------------------
subjectID 		2                                    Character                   
     	 subject identifier 
                  01..30 . Identifies subject who performed the activity.

activityID 		1
     	 activity identifier                                 Integer  
                  1..6 . Links the class labels with their activity name.

activityName 	17                                           Character 
     	 activity labels
1.	WALKING
2.	WALKING UPSTAIRS
3.	WALKING DOWNSTAIRS
4.	SITTING
5.	STANDING
6.	LAYING


timeBodyAccMean(X,Y,Z)	   10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration time signals estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   

timeBodyAccStd(X,Y,Z)	   10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration time signals estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.  

timeGravityAccMean(X,Y,Z)  10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Gravity acceleration time signals estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   
 

timeGravityAccStd(X,Y,Z)  10-21                               Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Gravity acceleration time signals estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   

timeBodyAccJerkMean(X,Y,Z)  10-21                             Numeric    
     	Accelerometer Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration jerk signals derived in time and estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAccJerkStd(X,Y,Z)  10-21                              Numeric    
     	Accelerometer Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration jerk signals derived in time and estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.  

timeBodyGyroMean(X,Y,Z)  10-21                                Numeric    
     	Gyroscope Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum time signals estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   

timeBodyGyroStd(X,Y,Z)  10-21                                 Numeric    
     	Gyroscope Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum time signals estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions. 


timeBodyGyroJerkMean(X,Y,Z)  10-21                            Numeric  
     	Gyroscope Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum jerk signals derived in time and estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.

timeBodyGyroJerkStd(X,Y,Z)  10-21                             Numeric    
     	Gyroscope Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum jerk signals derived in time and estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAccMagMean	   10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration time signals estimated by magnitude and mean.

timeBodyAccMagStd	   10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration time signals estimated by magnitude and standard deviation. 

timeGravityAccMagMean	   10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Gravity acceleration time signals estimated by magnitude and mean.

timeGravityAccMagStd	   10-21                              Numeric    
     	Accelerometer Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Gravity acceleration time signals estimated by magnitude and standard deviation. 
timeBodyAccJerkMagMean	   10-21                              Numeric    
     	Accelerometer Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration jerk signals derived in time and estimated by magnitude and mean. 

timeBodyAccJerkMagStd	   10-21                              Numeric    
     	Accelerometer Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration jerk signals derived in time and estimated by magnitude and standard deviation. 

timeBodyGyroMagMean	   10-21                              Numeric    
     	Gyroscope Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum time signals estimated by magnitude and mean.

timeBodyGyroMagStd	   10-21                              Numeric    
     	Gyroscope Time Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum time signals estimated by magnitude and standard deviation. 

timeBodyGyroJerkMagMean	   10-21                              Numeric    
     	Gyroscope Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum jerk signals derived in time and estimated by magnitude and mean.

timeBodyGyroJerkMagStd	   10-21                              Numeric    
     	Gyroscope Time Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum jerk signals derived in time and estimated by magnitude and standard deviation.


 freqBodyAccMean(X,Y,Z)	   10-21                              Numeric    
     	Accelerometer Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration frequency signals estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   

freqBodyAccStd(X,Y,Z)	   10-21                              Numeric    
     	Accelerometer Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration frequency signals estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   

freqBodyAccJerkMean(X,Y,Z)  10-21                             Numeric    
     	Accelerometer Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration frequent jerk signals derived in time and estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.

freqBodyAccJerkStd(X,Y,Z)  10-21                              Numeric    
     	Accelerometer Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration frequent jerk signals derived in time and estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.  

freqBodyGyroMean(X,Y,Z)  10-21                                Numeric    
     	Gyroscope Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum frequency signals estimated by mean. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions.   


freqBodyGyroStd(X,Y,Z)  10-21                                 Numeric    
     	Gyroscope Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum frequency signals estimated by standard deviation. ‘XYZ' used to denote 3-axial signals in the X, Y and Z directions. 

freqBodyAccMagMean	   10-21                              Numeric    
     	Accelerometer Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration frequent signals estimated by magnitude and mean.

freqBodyAccMagStd	   10-21                              Numeric    
     	Accelerometer Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration frequent signals estimated by magnitude and standard deviation. 

freqBodyAccJerkMagMean	   10-21                              Numeric    
     	Accelerometer Frequency Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration jerk signals derived in frequency and estimated by magnitude and mean. 

freqBodyAccJerkMagStd	   10-21                              Numeric    
     	Accelerometer Frequency Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body acceleration jerk signals derived in frequency and estimated by magnitude and standard deviation. 

freqBodyGyroMagMean	   10-21                              Numeric    
     	Gyroscope Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum frequent signals estimated by magnitude and mean.

freqBodyGyroMagStd	   10-21                              Numeric    
     	Gyroscope Frequency Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum frequent signals estimated by magnitude and standard deviation. 

freqBodyGyroJerkMagMean	   10-21                              Numeric    
     	Gyroscope Frequency Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum frequent signals derived in time and estimated by magnitude and mean.

freqBodyGyroJerkMagStd	   10-21                              Numeric    
     	Gyroscope Frequency Jerk Signals Measurement                             
(-+)0.9999999..(-+)0.999999999999999999 
. Body angular momentum frequent signals derived in time and estimated by magnitude and standard deviation.

--------------------------------------------------------------------
DATA
---------------------------------------------------------------------
Data users should be aware that the above variables, included in this dataset 'tidyset.txt', are a subset of the “Human Activity Recognition Using Smartphones Dataset v1.0”. This subset does not include all variables of the original dataset, nor contains all original calculations/values. The subset was created to illustrate Data Science process for getting and cleaning data. 

Refer to Human Activity Recognition Using Smartphones Dataset details at:                                   
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones        
The 'tidyset.txt' dataset was created from files of the Human Activity Recognition Using Smartphones Dataset.
 
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels. 
'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

The tidyset dataset consists of 180 observations and 69 variables.    
----------------------------------------------------------------------
TRANSFORMATIONS - Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

----------------------------------------------------------------------
TRANSFORMATIONS - Tidyset Dataset
----------------------------------------------------------------------
Merges training (561 cols,7352 rows) and the test (561 cols,2947 rows) sets to create one data set (563 cols,10299 rows).
Columns for subjectID and activityID are binded in above.
Extracts only the measurements (features) on the mean and standard deviation for each measurement (68 cols,10299 rows). 
Uses descriptive activity names to name the activities in the data set (69 cols,10299 rows).
ActivityName column binded in above.
Appropriately labels the data set with descriptive variable names. 
Characters replaced in above to make column names more readable.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject (69 cols,180 rows). 



  




   
