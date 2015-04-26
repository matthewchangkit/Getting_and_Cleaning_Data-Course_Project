# Getting and Cleaning Data - Course Project
This is the course project for the Getting and Cleaning Data in the Coursera Data Science Specialization

## Introduction
The purpose of this project is to demonstrate ones ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

This repository will contain the following items:

1) A tidy data set as described by the following steps:
* Merge the training and the test sets to create one data set
* Extract only the measurements on the mean and standard deviation for each measurement
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names
* From the data set produced in the previous step, create a second, independent tidy data set with the average of each variable for each  activity and each subject

2) A link to the Github repository with respective script for performing the analysis

3) A code book that describes the variables, the data, and any transformations or work that were performed to clean up the data

## Description
We now give brief description into the files that we have in our repository.

### run_analysis.R
Within the run_analysis.R we first downloaded the zip file and place it in a new folder called pa2. After unzipping the zipped file we looked at all the files in the pa2/UCI HAR Dataset folder and, for the purposes of this project loaded the following folders:
* test/subject_test.txt
* test/X_test.txt
* test/y_test.txt
* train/subject_train.txt
* train/X_train.txt
* train/y_train.txt

Reading in these specific files we saw that in all files the descriptive variable names that would be needed was:
* Subject
* Activity
* Features

Creating the corresponding training and test sets we then merged them together to form a merged data set for all 3 descriptive names. It is noted that within this process we set the names to the specific variables in the merged data set.

We then extracted the only the measurements on the mean and standard deviation for each different type of measurement and used descriptive activity names to name the activities in the data set. Subsequently, we gave labels to the data set with their respective variable names, specifically:

* prefix t is replaced by time
* Acc is replaced by Accelerometer
* Gyro is replaced by Gyroscope
* prefix f is replaced by frequency
* Mag is replaced by Magnitude
* BodyBody is replaced by Body

Finally, we created the tidy data set through aggregation and the plyr library. Writing the new table in a txt file as displayed in the other documents in this repository.

The codebook will have a more detailed description of the tidy data set's variables and their variable types, and dimensions. 
