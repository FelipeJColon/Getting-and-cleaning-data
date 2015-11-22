# READ ME

Here, I aim to prepare a tidy dataset that can be used for later analysis. There original data were retrieved from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Date were saved locally into my computer and later analysed using an R script called run_analysis.R (found on this repository) that aims to achieve the following aims:

1. Merge a training and the test sets to create a new dataset
2. Extract *exclusively* the measurements on the mean and standard deviation for each variable measured 
3. Use descriptive names for each of the activities in the dataset created for Objective 2
4. Appropriately label each of the variables in the dataset with descriptive names
5. Create an independent tidy dataset with the average of each variable for each activity and subject based on the set created for Objective 4

The tidy set is then saved in a file called “tidydata.txt”. A description of the original data, as well as for the variables included in the final set can be  found in the CodeBook.md file in this repository.


