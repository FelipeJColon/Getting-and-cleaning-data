
# Code book

This codebook was created on 2015-20-12 16:25:20 using RStudio version 0.99.489 and 
R version 3.1.3 (2015-03-09, "Smooth Sidewalk"). 

## Description of the data
------------------------------
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
filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings /window). Sensor acceleration signalss, which have gravitational and body motion 
components, were separated using a Butterworth low-pass filter into body acceleration and
gravity. The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 
features was obtained by calculating variables from the time and frequency domain. 

## Data processing and transformations
-----------------------------------

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
-----------------------------------

The features selected for the dataset created as a final output using the run_analysis.R
script correspond to the average value for each subject and activity combination for 
those features for which the mean value and standard deviation were obtained. The 
complete list of variables is the following:

| Variable                                | Description                                  | 
| --------------------------------------- | ------------------------------------ | 
| Subject                                 | Subject ID                           | 
| Activity                                | Activity Name                        | 
| TimeBodyAccelerometer.Mean.Xaxis        | Mean body acceleration signal using accelerometer (Time domain, X axis)  |  
| TimeBodyAccelerometer.Mean.Yaxis        | Mean body acceleration signal using accelerometer (Time domain, Y axis)  |  
| TimeBodyAccelerometer.Mean.Zaxis        | Mean body acceleration signal using accelerometer (Time domain, Z axis)  |  
| TimeBodyAccelerometer.SDev.Xaxis        | Std deviation body acceleration signal using accelerometer (Time domain, X axis)  |  
| TimeBodyAccelerometer.SDev.Yaxis        | Std deviation body acceleration signal using accelerometer (Time domain, Y axis)  |  
| TimeBodyAccelerometer.SDev.Zaxis        | Std deviation body acceleration signal using accelerometer (Time domain, Z axis)  |  
| TimeGravityAccelerometer.Mean.Xaxis        | Mean gravity acceleration signal using accelerometer (Time domain, X axis)  |  
| TimeGravityAccelerometer.Mean.Yaxis        | Mean gravity acceleration signal using accelerometer (Time domain, Y axis)  |  
| TimeGravityAccelerometer.Mean.Zaxis        | Mean gravity acceleration signal using accelerometer (Time domain, Z axis)  |  
| TimeGravityAccelerometer.SDev.Xaxis        | Std deviation gravity acceleration signal using accelerometer (Time domain, X axis)  |  
| TimeGravityAccelerometer.SDev.Yaxis        | Std deviation gravity acceleration signal using accelerometer (Time domain, Y axis)  |  
| TimeGravityAccelerometer.SDev.Zaxis        | Std deviation gravity acceleration signal using accelerometer (Time domain, Z axis)  |  
| TimeBodyAccelerometerJerk.Mean.Xaxis        | Mean body acceleration jerk signal using accelerometer (Time domain, X axis)  |  
| TimeBodyAccelerometerJerk.Mean.Yaxis        | Mean body acceleration jerk signal using accelerometer (Time domain, Y axis)  |  
| TimeBodyAccelerometerJerk.Mean.Zaxis        | Mean body acceleration jerk signal using accelerometer (Time domain, Z axis)  |  
| TimeBodyAccelerometerJerk.SDev.Xaxis        | Std deviation body acceleration jerk signal using accelerometer (Time domain, X axis)  |  
| TimeBodyAccelerometerJerk.SDev.Yaxis        | Std deviation body acceleration jerk signal using accelerometer (Time domain, Y axis)  |  
| TimeBodyAccelerometerJerk.SDev.Zaxis        | Std deviation body acceleration jerk signal using accelerometer (Time domain, Z axis)  |  
| TimeBodyGyroscope.Mean.Xaxis        | Mean body acceleration signal using gyroscope (Time domain, X axis)  |  
| TimeBodyGyroscope.Mean.Yaxis        | Mean body acceleration signal using gyroscope (Time domain, Y axis)  |  
| TimeBodyGyroscope.Mean.Zaxis        | Mean body acceleration signal using gyroscope (Time domain, Z axis)  |  
| TimeBodyGyroscope.SDev.Xaxis        | Std deviation body acceleration signal using gyroscope (Time domain, X axis)  |  
| TimeBodyGyroscope.SDev.Yaxis        | Std deviation body acceleration signal using gyroscope (Time domain, Y axis)  |  
| TimeBodyGyroscope.SDev.Zaxis        | Std deviation body acceleration signal using gyroscope (Time domain, Z axis)  |  
| TimeBodyGyroscopeJerk.Mean.Xaxis        | Mean body acceleration jerk signal using gyroscope (Time domain, X axis)  |  
| TimeBodyGyroscopeJerk.Mean.Yaxis        | Mean body acceleration jerk signal using gyroscope (Time domain, Y axis)  |  
| TimeBodyGyroscopeJerk.Mean.Zaxis        | Mean body acceleration jerk signal using gyroscope (Time domain, Z axis)  |  
| TimeBodyGyroscopeJerk.SDev.Xaxis        | Std deviation body acceleration jerk signal using gyroscope (Time domain, X axis)  |  
| TimeBodyGyroscopeJerk.SDev.Yaxis        | Std deviation body acceleration jerk signal using gyroscope (Time domain, Y axis)  |  
| TimeBodyGyroscopeJerk.SDev.Zaxis        | Std deviation body acceleration jerk signal using gyroscope (Time domain, Z axis)  |  
| TimeBodyAccelerometerMagnitude.Mean | Mean magnitude of body acceleration signal using accelerometer (Time domain)
| TimeBodyAccelerometerMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using accelerometer (Time domain)
| TimeGravityAccelerometerMagnitude.Mean | Mean magnitude of gravity acceleration signal using accelerometer (Time domain)
| TimeGravityAccelerometerMagnitude.SDev | Std deviation of the magnitude of gravity acceleration signal using accelerometer (Time domain)
| TimeBodyAccelerometerJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using accelerometer (Time domain)
| TimeBodyAccelerometerJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using accelerometer (Time domain)
| TimeBodyGyroscopeMagnitude.Mean | Mean magnitude of body acceleration signal using gyroscope (Time domain)
| TimeBodyGyroscopeMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using gyroscope (Time domain)
| TimeBodyGyroscopeJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using gyroscope (Time domain)
| TimeBodyGyroscopeJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using gyroscope (Time domain)
| FrequencyBodyAccelerometer.Mean.Xaxis        | Mean body acceleration signal using accelerometer (Frequency domain, X axis)  |  
| FrequencyBodyAccelerometer.Mean.Yaxis        | Mean body acceleration signal using accelerometer (Frequency domain, Y axis)  |  
| FrequencyBodyAccelerometer.Mean.Zaxis        | Mean body acceleration signal using accelerometer (Frequency domain, Z axis)  |  
| FrequencyBodyAccelerometer.SDev.Xaxis        | Std deviation body acceleration signal using accelerometer (Frequency domain, X axis)  |  
| FrequencyBodyAccelerometer.SDev.Yaxis        | Std deviation body acceleration signal using accelerometer (Frequency domain, Y axis)  |  
| FrequencyBodyAccelerometer.SDev.Zaxis        | Std deviation body acceleration signal using accelerometer (Frequency domain, Z axis)  |  
| FrequencyBodyAccelerometerJerk.Mean.Xaxis        | Mean body acceleration jerk signal using accelerometer (Frequency domain, X axis)  |  
| FrequencyBodyAccelerometerJerk.Mean.Yaxis        | Mean body acceleration jerk signal using accelerometer (Frequency domain, Y axis)  |  
| FrequencyBodyAccelerometerJerk.Mean.Zaxis        | Mean body acceleration jerk signal using accelerometer (Frequency domain, Z axis)  |  
| FrequencyBodyAccelerometerJerk.SDev.Xaxis        | Std deviation body acceleration jerk signal using accelerometer (Frequency domain, X axis)  |  
| FrequencyBodyAccelerometerJerk.SDev.Yaxis        | Std deviation body acceleration jerk signal using accelerometer (Frequency domain, Y axis)  |  
| FrequencyBodyAccelerometerJerk.SDev.Zaxis        | Std deviation body acceleration jerk signal using accelerometer (Frequency domain, Z axis)  |  
| FrequencyBodyGyroscope.Mean.Xaxis        | Mean body acceleration signal using gyroscope (Frequency domain, X axis)  |  
| FrequencyBodyGyroscope.Mean.Yaxis        | Mean body acceleration signal using gyroscope (Frequency domain, Y axis)  |  
| FrequencyBodyGyroscope.Mean.Zaxis        | Mean body acceleration signal using gyroscope (Frequency domain, Z axis)  |  
| FrequencyBodyGyroscope.SDev.Xaxis        | Std deviation body acceleration signal using gyroscope (Frequency domain, X axis)  |  
| FrequencyBodyGyroscope.SDev.Yaxis        | Std deviation body acceleration signal using gyroscope (Frequency domain, Y axis)  |  
| FrequencyBodyGyroscope.SDev.Zaxis        | Std deviation body acceleration signal using gyroscope (Frequency domain, Z axis)  |  
| FrequencyBodyAccelerometerMagnitude.Mean | Mean magnitude of body acceleration signal using accelerometer (Frequency domain)
| FrequencyBodyAccelerometerMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using accelerometer (Frequency domain)
| FrequencyBodyAccelerometerJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using accelerometer (Frequency domain)
| FrequencyBodyAccelerometerJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using accelerometer (Frequency domain)
| FrequencyBodyGyroscopeMagnitude.Mean | Mean magnitude of body acceleration signal using gyroscope (Frequency domain)
| FrequencyBodyGyroscopeMagnitude.SDev | Std deviation of the magnitude of body acceleration signal using gyroscope (Frequency domain)
| FrequencyBodyGyroscopeJerkMagnitude.Mean | Mean magnitude of body acceleration jerk signal using gyroscope (Frequency domain)
| FrequencyBodyGyroscopeJerkMagnitude.SDev | Std deviation of the magnitude of body acceleration jerk signal using gyroscope (Frequency domain)


