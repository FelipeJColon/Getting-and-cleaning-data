#README

Here, we aim to prepare a tidy dataset that can be used for later analysis. There original data were retrieved from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Date were then analysed using an R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one new dataset.
2. Extracts exclusively the measurements on the mean and standard deviation for each measurement conducted in the study. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy set is then saved in a file called “tidydata.txt”. The variables included in the final set can be  found in the Cookbook.md file in the same repository where you accessed this README.md file.


