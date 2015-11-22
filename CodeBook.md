# Code book

This codebook was created on 2015-20-12 16:25:20 using RStudio version 0.99.489 and 
R version 3.1.3 (2015-03-09, "Smooth Sidewalk"). 

## Description of the data

The experiments have been carried out with a group of 30 volunteers within an age 
bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING) wearing a smartphone (Samsung Galaxy 
S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial 
linear acceleration and 3-axial (axes X, Y, and Z) angular velocity at a constant rate of 
50Hz. The experiments were video-recorded to label the data manually. The original dataset 
was randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data. The final dataset obtained using the
run_analysis.R script contains information from the whole dataset (i.e. including the
training and test sets).

Two sensor signals (accelerometer and gyroscope) were pre-processed by applying noise 
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 
readings /window). Sensor acceleration signalss, which have gravitational and body motion 
components, were separated using a Butterworth low-pass filter into body acceleration and
gravity. The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 
features was obtained by calculating variables from the time and frequency domain. 

## Features included in the original dataset

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw 
signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were 
captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd 
order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, 
the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain 
Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' 
to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Data processing and transformations

The original dataset was retrieved from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and processed using the run_analysis.R found in the repository holding this cookbook.

The original dataset included 561 different measurements. The following steps were 
executed using the run_analysis.R R script for the creation of the tidy dataset available
in the tidydata.txt file (found in the same repository as this file):

1. The training and the test sets were merged to create one dataset.
2. Measurements on the mean and standard deviation for each measurement were extracted. 
3. Descriptive activity names were assigned to name the activities in the dataset.
4. Appropriate labels were given to the variables in the dataset with descriptive variable names. 
5. A second, independent tidy dataset (tidydata.txt) was created with the average of each 
variable for each activity and each subject.


## Variables in the tidydata.txt set:

The features selected for the dataset created as a final output using the run_analysis.R
script correspond to the average value for each subject and activity combination for 
those features for which the mean value and standard deviation were obtained. The 
complete list of variables is the following:

| Variable                                | Description                          | Units   | 
| --------------------------------------- | ------------------------------------ | -------
| Subject                                 | Subject ID                           | Dimensionless |
| Activity                                | Activity Name                        | Dimensionless |
| TimeBodyAccelerometer.Mean.Xaxis        | Mean body acceleration signal using accelerometer (Time domain, X axis)  | g |  
| TimeBodyAccelerometer.Mean.Yaxis        | Mean body acceleration signal using accelerometer (Time domain, Y axis)  | g | 
| TimeBodyAccelerometer.Mean.Zaxis        | Mean body acceleration signal using accelerometer (Time domain, Z axis)  |  g |
| TimeBodyAccelerometer.SDev.Xaxis        | Std deviation body acceleration signal using accelerometer (Time domain, X axis)  |  g |
| TimeBodyAccelerometer.SDev.Yaxis        | Std deviation body acceleration signal using accelerometer (Time domain, Y axis)  |  g |
| TimeBodyAccelerometer.SDev.Zaxis        | Std deviation body acceleration signal using accelerometer (Time domain, Z axis)  |  g |
| TimeGravityAccelerometer.Mean.Xaxis        | Mean gravity acceleration signal using accelerometer (Time domain, X axis)  |  g |
| TimeGravityAccelerometer.Mean.Yaxis        | Mean gravity acceleration signal using accelerometer (Time domain, Y axis)  |  g |
| TimeGravityAccelerometer.Mean.Zaxis        | Mean gravity acceleration signal using accelerometer (Time domain, Z axis)  |  g |
| TimeGravityAccelerometer.SDev.Xaxis        | Std deviation gravity acceleration signal using accelerometer (Time domain, X axis)  |  g |
| TimeGravityAccelerometer.SDev.Yaxis        | Std deviation gravity acceleration signal using accelerometer (Time domain, Y axis)  |  g |
| TimeGravityAccelerometer.SDev.Zaxis        | Std deviation gravity acceleration signal using accelerometer (Time domain, Z axis)  |  g |
| TimeBodyAccelerometerJerk.Mean.Xaxis        | Mean body acceleration jerk signal using accelerometer (Time domain, X axis)  |  g |
| TimeBodyAccelerometerJerk.Mean.Yaxis        | Mean body acceleration jerk signal using accelerometer (Time domain, Y axis)  |  g |
| TimeBodyAccelerometerJerk.Mean.Zaxis        | Mean body acceleration jerk signal using accelerometer (Time domain, Z axis)  |  g |
| TimeBodyAccelerometerJerk.SDev.Xaxis        | Std deviation body acceleration jerk signal using accelerometer (Time domain, X axis)  |  g |
| TimeBodyAccelerometerJerk.SDev.Yaxis        | Std deviation body acceleration jerk signal using accelerometer (Time domain, Y axis)  |  g |
| TimeBodyAccelerometerJerk.SDev.Zaxis        | Std deviation body acceleration jerk signal using accelerometer (Time domain, Z axis)  |  g |
| TimeBodyGyroscope.Mean.Xaxis        | Mean body acceleration signal using gyroscope (Time domain, X axis)  |  radians/second |
| TimeBodyGyroscope.Mean.Yaxis        | Mean body acceleration signal using gyroscope (Time domain, Y axis)  |  radians/second |
| TimeBodyGyroscope.Mean.Zaxis        | Mean body acceleration signal using gyroscope (Time domain, Z axis)  |  radians/second |
| TimeBodyGyroscope.SDev.Xaxis        | Std deviation body acceleration signal using gyroscope (Time domain, X axis)  |  radians/second |
| TimeBodyGyroscope.SDev.Yaxis        | Std deviation body acceleration signal using gyroscope (Time domain, Y axis)  |  radians/second |
| TimeBodyGyroscope.SDev.Zaxis        | Std deviation body acceleration signal using gyroscope (Time domain, Z axis)  |  radians/second |
| TimeBodyGyroscopeJerk.Mean.Xaxis        | Mean body acceleration jerk signal using gyroscope (Time domain, X axis)  |  radians/second |
| TimeBodyGyroscopeJerk.Mean.Yaxis        | Mean body acceleration jerk signal using gyroscope (Time domain, Y axis)  |  radians/second |
| TimeBodyGyroscopeJerk.Mean.Zaxis        | Mean body acceleration jerk signal using gyroscope (Time domain, Z axis)  |  radians/second |
| TimeBodyGyroscopeJerk.SDev.Xaxis        | Std deviation body acceleration jerk signal using gyroscope (Time domain, X axis)  |  radians/second |
| TimeBodyGyroscopeJerk.SDev.Yaxis        | Std deviation body acceleration jerk signal using gyroscope (Time domain, Y axis)  |  radians/second |
| TimeBodyGyroscopeJerk.SDev.Zaxis        | Std deviation body acceleration jerk signal using gyroscope (Time domain, Z axis)  |  radians/second |
| TimeBodyAccelerometerMagnitude.Mean | Mean magnitude of body acceleration signal using accelerometer (Time domain) | g |
| TimeBodyAccelerometerMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using accelerometer (Time domain) | g |
| TimeGravityAccelerometerMagnitude.Mean | Mean magnitude of gravity acceleration signal using accelerometer (Time domain) | g |
| TimeGravityAccelerometerMagnitude.SDev | Std deviation of the magnitude of gravity acceleration signal using accelerometer (Time domain) | g |
| TimeBodyAccelerometerJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using accelerometer (Time domain) | g |
| TimeBodyAccelerometerJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using accelerometer (Time domain) | g |
| TimeBodyGyroscopeMagnitude.Mean | Mean magnitude of body acceleration signal using gyroscope (Time domain) | radians/second |
| TimeBodyGyroscopeMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using gyroscope (Time domain) | radians/second |
| TimeBodyGyroscopeJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using gyroscope (Time domain) | radians/second |
| TimeBodyGyroscopeJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using gyroscope (Time domain) | radians/second |
| FrequencyBodyAccelerometer.Mean.Xaxis        | Mean body acceleration signal using accelerometer (Frequency domain, X axis)  |  g |
| FrequencyBodyAccelerometer.Mean.Yaxis        | Mean body acceleration signal using accelerometer (Frequency domain, Y axis)  |  g |
| FrequencyBodyAccelerometer.Mean.Zaxis        | Mean body acceleration signal using accelerometer (Frequency domain, Z axis)  |  g |
| FrequencyBodyAccelerometer.SDev.Xaxis        | Std deviation body acceleration signal using accelerometer (Frequency domain, X axis)  |  g |
| FrequencyBodyAccelerometer.SDev.Yaxis        | Std deviation body acceleration signal using accelerometer (Frequency domain, Y axis)  |  g |
| FrequencyBodyAccelerometer.SDev.Zaxis        | Std deviation body acceleration signal using accelerometer (Frequency domain, Z axis)  |  g |
| FrequencyBodyAccelerometerJerk.Mean.Xaxis        | Mean body acceleration jerk signal using accelerometer (Frequency domain, X axis)  |  g |
| FrequencyBodyAccelerometerJerk.Mean.Yaxis        | Mean body acceleration jerk signal using accelerometer (Frequency domain, Y axis)  |  g |
| FrequencyBodyAccelerometerJerk.Mean.Zaxis        | Mean body acceleration jerk signal using accelerometer (Frequency domain, Z axis)  |  g |
| FrequencyBodyAccelerometerJerk.SDev.Xaxis        | Std deviation body acceleration jerk signal using accelerometer (Frequency domain, X axis)  |  g |
| FrequencyBodyAccelerometerJerk.SDev.Yaxis        | Std deviation body acceleration jerk signal using accelerometer (Frequency domain, Y axis)  |  g |
| FrequencyBodyAccelerometerJerk.SDev.Zaxis        | Std deviation body acceleration jerk signal using accelerometer (Frequency domain, Z axis)  |  g |
| FrequencyBodyGyroscope.Mean.Xaxis        | Mean body acceleration signal using gyroscope (Frequency domain, X axis)  |  radians/second |
| FrequencyBodyGyroscope.Mean.Yaxis        | Mean body acceleration signal using gyroscope (Frequency domain, Y axis)  |  radians/second |
| FrequencyBodyGyroscope.Mean.Zaxis        | Mean body acceleration signal using gyroscope (Frequency domain, Z axis)  |  radians/second |
| FrequencyBodyGyroscope.SDev.Xaxis        | Std deviation body acceleration signal using gyroscope (Frequency domain, X axis)  |  radians/second |
| FrequencyBodyGyroscope.SDev.Yaxis        | Std deviation body acceleration signal using gyroscope (Frequency domain, Y axis)  |  radians/second |
| FrequencyBodyGyroscope.SDev.Zaxis        | Std deviation body acceleration signal using gyroscope (Frequency domain, Z axis)  |  radians/second |
| FrequencyBodyAccelerometerMagnitude.Mean | Mean magnitude of body acceleration signal using accelerometer (Frequency domain) | g |
| FrequencyBodyAccelerometerMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using accelerometer (Frequency domain) | g |
| FrequencyBodyAccelerometerJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using accelerometer (Frequency domain) | g |
| FrequencyBodyAccelerometerJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using accelerometer (Frequency domain) | g |
| FrequencyBodyGyroscopeMagnitude.Mean | Mean magnitude of body acceleration signal using gyroscope (Frequency domain) | radians/second |
| FrequencyBodyGyroscopeMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using gyroscope (Frequency domain) | radians/second |
| FrequencyBodyGyroscopeJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using gyroscope (Frequency domain) | radians/second |
| FrequencyBodyGyroscopeJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using gyroscope (Frequency domain) | radians/second |

## References
Please acknowledge the data source by citing: 

- Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
