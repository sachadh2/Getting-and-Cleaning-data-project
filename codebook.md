#Codebook

## Variable names and description
**subject_id:** Subject number (1 to 30)   
**activity_id:** Activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)   
**timeBodyAccelerometer-mean()-XYorZ:** Mean of body accelerometer signals in time in X, Y or Z direction   
**timeBodyAccelerometer-std()-XYorZ:** Standard deviation of body accelerometer signals in time in X, Y or Z direction   
**timeGravityAccelerometer-mean()-XYorZ:** Mean of gravity accelerometer signals in time in X, Y or Z direction   
**timeGravityAccelerometer-std()-XYorZ:** Standard deviation of gravity accelerometer signals in time in X, Y or Z direction   
**timeBodyAccelerometerJerk-mean()-XYorZ:** Mean of body accelerometer jerks in time in X, Y or Z direction   
**timeBodyAccelerometerJerk-std()-XYorZ:** Standard deviation of body accelerometer jerks in time in X, Y or Z direction   
**timeBodyGyroscope-mean()-XYorZ:** Mean of body gyroscope signals in time in X, Y or Z direction   
**timeBodyGyroscope-std()-XYorZ:** Standard deviation of body gyroscope signals in time in X, Y or Z direction   
**timeBodyGyroscopeJerk-mean()-XYorZ:** Mean of body gyroscope jerks in time in X, Y or Z direction   
**timeBodyGyroscopeJerk-std()-XYorZ:** Standard deviation of body gyroscope jerks in time in X, Y or Z direction   
**timeBodyAccelerometerMagnitude-mean():** Mean of body accelerometer magnitude in time   
**timeBodyAccelerometerMagnitude-std():** Standard deviation of body accelerometer magnitude in time   
**timeGravityAccelerometerMagnitude-mean():** Mean of gravity accelerometer magnitude in time   
**timeGravityAccelerometerMagnitude-std():** Standard deviation of gravity accelerometer magnitude in time   
**timeBodyAccelerometerJerkMagnitude-mean():** Mean of body accelerometer jerk magnitude in time   
**timeBodyAccelerometerJerkMagnitude-std():** Standard deviation of body accelerometer jerk magnitude in time   
**timeBodyGyroscopeMagnitude-mean()**: Mean of body gyroscope magnitude in time   
**timeBodyGyroscopeMagnitude-std()**: Standard deviation of body gyroscope magnitude in time   
**timeBodyGyroscopeJerkMagnitude-mean()**: Mean of body gyroscope jerk magnitude in time   
**timeBodyGyroscopeJerkMagnitude-std()**: Standard deviation of body gyroscope jerk magnitude in time   
**frequencyBodyAccelerometer-mean()-XYorZ:** Mean of FFT body accelerometer signals in X, Y or Z direction   
**frequencyBodyAccelerometer-std()-XYorZ:** Standard deviation of FFT body accelerometer signals in X, Y or Z direction   
**frequencyBodyAccelerometerJerk-mean()-XYorZ:** Mean of FFT body accelerometer jerk signals in X, Y or Z direction   
**frequencyBodyAccelerometerJerk-std()-XYorZ:** Standard deviation of FFT body accelerometer jerk signals in X, Y or Z direction   
**frequencyBodyGyroscope-mean()-XYorZ:** Mean of FFT body gyroscope jerk signals in X, Y or Z direction   
**frequencyBodyGyroscope-std()-XYorZ:** Standard deviation of FFT body gyroscope jerk signals in X, Y or Z direction   
**frequencyBodyAccelerometerMagnitude-mean()**: Mean of FFT body accelerometer magnitude   
**frequencyBodyAccelerometerMagnitude-std()**: Standard deviation of FFT body accelerometer magnitude   
**frequencyBodyAccelerometerJerkMagnitude-mean()**: Mean of FFT body accelerometer jerk magnitude   
**frequencyBodyAccelerometerJerkMagnitude-std()**: Standard deviation of FFT body accelerometer jerk magnitude   
**frequencyBodyGyroscopeMagnitude-mean()**: Mean of FFT body gyroscope magnitude   
**frequencyBodyGyroscopeMagnitude-std()**: : Standard deviation of FFT body gyroscope magnitude   
**frequencyBodyGyroscopeJerkMagnitude-mean()**: Mean of FFT body gyroscope jerk magnitude   
**frequencyBodyGyroscopeJerkMagnitude-std()**: Standard deviation of FFT body gyroscope jerk magnitude   

## The data
The data consists of the means of various variables listed above corresponding to each subject id and activity name

## Transformations
The original file consisted of data of different variables corresponding to each activity carried out by a subject a number of times. 
The final data is obtained by taking the mean of the data of different variables corresponding to each activity and subject resulting
in an over all mean. The test data and training data were originally separate, however they are merged in the final data set. The 
column names were modified to be more descriptive and originate from the feature names. 
