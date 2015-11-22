## ##################################################################################
##
##                          DATA SCIENCE SPECIALIZATION
##
##          COURSE PROJECT FOR THE MODULE "GETTING AND CLEANING DATA" 
##
## ##################################################################################
##
## DISCLAIMER: 
## This script has been developed for study purposes only. 
## The script is provided without any warranty of any kind, either express or implied. 
## The entire risk arising out of the use or performance of the sample script and 
## documentation remains with you. 
## In no event shall the author be liable for any damages whatsoever (including, 
## without limitation, damages for loss of business profits, business interruption, 
## loss of business information, or other pecuniary loss) arising out of the use of  
## or inability to use the sample scripts or documentation, even if the author has 
## been advised of the possibility of such damages. 
##
## ##################################################################################
##
## DESCRIPTION
## This routine aims to achieve the following objectives: 
## 1. Merge a training and the test sets to create a new dataset
## 2. Extract *exclusively* the measurements on the mean and standard deviation 
##    for each variable measured 
## 3. Use descriptive names for each of the activities in the dataset created 
##    for Objective 2
## 4. Appropriately label each of the variables in the dataset with descriptive 
##    names
## 5. Create an independent tidy dataset with the average of each variable for 
##    each activity and subject based on the set created for Objective 4
##
## ##################################################################################
##
## Version: 1
## Created on: 11 Nov 2015
##
## Written by: Felipe J Colón-González
## 
## ##################################################################################

# ---------------------------------------------------------------------
# Define directory for input data
# ---------------------------------------------------------------------
old_dir <- getwd()
setwd("/Users/Felipe/Documents/COURSERA/data/")

# ---------------------------------------------------------------------
# Load packages and define options for the session
# ---------------------------------------------------------------------
require(data.table)

options(scipen=100,width=80)

# Create directory for output data
if(!file.exists("./output")){dir.create("./output")}

# ---------------------------------------------------------------------
# Read input data
# ---------------------------------------------------------------------
# Set path to input data
src <- file.path("./UCI HAR Dataset/")

# Set path to output data
out <- file.path("./output/")

# Access list of files in target directory
files <- list.files(src,recursive=TRUE)

# Subject data 
subTrain <- read.table(paste0(src,"train/subject_train.txt"))
subTest <- read.table(paste0(src,"test/subject_test.txt"))

# Activity data
actLabels <- read.table(paste0(src,"activity_labels.txt"))
actTrain <- read.table(paste0(src,"train/y_train.txt"))
actTest <- read.table(paste0(src,"test/y_test.txt"))

# Features data
featNames <- read.table(paste0(src,"features.txt"))
featTrain <- read.table(paste0(src,"train/X_train.txt"))
featTest <- read.table(paste0(src,"test/X_test.txt"))

# ---------------------------------------------------------------------
# Part 1: Merge the training and the test sets to create one data set
# ---------------------------------------------------------------------
# Merge subject sets
subjects <- rbind(subTrain, subTest)

# Merge activity sets
activity <- rbind(actTrain, actTest)

# Merge features sets
features <- rbind(featTrain, featTest)

# Assign column names to the new sets
colnames(subjects) <- "Subject"
colnames(activity) <- "Activity"
colnames(features) <- featNames[,2]

# Merge all data into a single set
alldata <- cbind(subjects,activity,features)

# ---------------------------------------------------------------------
# Part 2: Extract *exclusively* the measurements of the mean and 
# standard deviation for each measurement
# ---------------------------------------------------------------------
# Select features with “mean()” or “std()” in their names
selectMeanSd <- as.character(featNames[,2][grep("mean\\(\\)|std\\(\\)", 
                                                featNames[,2])])

# Add activity and subject labels (for following steps)
selected <- c(selectMeanSd,"Activity","Subject")

# Extract mean and sd measurements only
subdata <- subset(alldata,select=selected)

# ---------------------------------------------------------------------
# Part 3: Use descriptive names for each of the activities in the 
# dataset
# ---------------------------------------------------------------------
subdata$Activity <- factor(subdata$Activity,labels=actLabels[,2])

# ---------------------------------------------------------------------
# Part 4: Appropriately label each of the variables in the dataset 
# with descriptive names
# ---------------------------------------------------------------------
# Substitute abbreviations with written out names and remove brackets
names(subdata) <- gsub("^t","Time",gsub("^f","Frequency",
                                        gsub("Acc","Accelerometer",
                                             names(subdata))))

names(subdata) <- gsub("Gyro","Gyroscope",gsub("Mag","Magnitude", 
                                               gsub("BodyBody","Body",
                                                    names(subdata))))

names(subdata) <- gsub("-mean",".Mean",gsub("-std",".SDev", 
                                            gsub("\\(|\\)","",
                                                 names(subdata))))

names(subdata) <- gsub("-X",".Xaxis",gsub("-Y",".Yaxis", 
                                          gsub("-Z",".Zaxis",
                                               names(subdata))))

# ---------------------------------------------------------------------
# Part 5: Create a new, independent tidy dataset with the average of 
# *all* variables on the dataset created for Part 4, aggregated for 
# each activity and subject
# ---------------------------------------------------------------------
# Convert dataset to enhanced data.frame
subdata <- data.table(subdata)

# Factorise subject variable
subdata$Subject <- as.factor(subdata$Subject)

# Create tidy dataset
tidydata <- aggregate(. ~Subject + Activity, subdata, mean)

# Order datset by activity and subject
tidydata <- tidydata[order(tidydata$Activity,tidydata$Subject),]

# Write output to .txt file
write.table(tidydata, file="./output/tidydata.txt", 
            row.names=FALSE)

# ---------------------------------------------------------------------
# NOT TO RUN 
# ---------------------------------------------------------------------
# Load tidy dataset
# tidyset <- read.table("./output/tidydata_Mean_SD.txt",header=T)

# Leave no trace
# unlink("./data/",recursive=TRUE)

setwd(old_dir)

# ---------------------------------------------------------------------
# End of file
# ---------------------------------------------------------------------
