---
title: "Getting and Cleaning Data Course Project Codebook"
author: "Dan C"
date: "5/11/2020"
output: html_document
---

### Intro

This dataset is derived from the Human Activity Recognition Using Smartphones Data Set ("Smartphones Data Set") hosted at the UCI Machine Learning Repository. This dataset contains the average of each mean and standard deviation measurement for each activity and each subject in the Smartphones Data Set.

### Fields included in this dataset

1. activity: the activity being measured (Laying, Sitting, Standing, Walking, Walking Downstairs, and Walking Upstairs)     
2. subject: the subject being measured (numbered 1 through 30)
3. Averages of the mean or standard deviation measurements from the Smartphones Data Set (For more information on these measurements, see the extract from the original Smartphones Data Set file below):
    + avg_tBodyAcc-mean()-X              
    + avg_tBodyAcc-mean()-Y
    + avg_tBodyAcc-mean()-Z
    + avg_tBodyAcc-std()-X
    + avg_tBodyAcc-std()-Y
    + avg_tBodyAcc-std()-Z
    + avg_tGravityAcc-mean()-X
    + avg_tGravityAcc-mean()-Y
    + avg_tGravityAcc-mean()-Z
    + avg_tGravityAcc-std()-X
    + avg_tGravityAcc-std()-Y
    + avg_tGravityAcc-std()-Z
    + avg_tBodyAccJerk-mean()-X
    + avg_tBodyAccJerk-mean()-Y
    + avg_tBodyAccJerk-mean()-Z
    + avg_tBodyAccJerk-std()-X
    + avg_tBodyAccJerk-std()-Y
    + avg_tBodyAccJerk-std()-Z
    + avg_tBodyGyro-mean()-X
    + avg_tBodyGyro-mean()-Y
    + avg_tBodyGyro-mean()-Z
    + avg_tBodyGyro-std()-X
    + avg_tBodyGyro-std()-Y
    + avg_tBodyGyro-std()-Z
    + avg_tBodyGyroJerk-mean()-X
    + avg_tBodyGyroJerk-mean()-Y
    + avg_tBodyGyroJerk-mean()-Z
    + avg_tBodyGyroJerk-std()-X
    + avg_tBodyGyroJerk-std()-Y
    + avg_tBodyGyroJerk-std()-Z
    + avg_tBodyAccMag-mean()
    + avg_tBodyAccMag-std()
    + avg_tGravityAccMag-mean()
    + avg_tGravityAccMag-std()
    + avg_tBodyAccJerkMag-mean()
    + avg_tBodyAccJerkMag-std()
    + avg_tBodyGyroMag-mean()
    + avg_tBodyGyroMag-std()
    + avg_tBodyGyroJerkMag-mean()
    + avg_tBodyGyroJerkMag-std()
    + avg_fBodyAcc-mean()-X
    + avg_fBodyAcc-mean()-Y
    + avg_fBodyAcc-mean()-Z
    + avg_fBodyAcc-std()-X
    + avg_fBodyAcc-std()-Y
    + avg_fBodyAcc-std()-Z
    + avg_fBodyAcc-meanFreq()-X
    + avg_fBodyAcc-meanFreq()-Y
    + avg_fBodyAcc-meanFreq()-Z
    + avg_fBodyAccJerk-mean()-X
    + avg_fBodyAccJerk-mean()-Y
    + avg_fBodyAccJerk-mean()-Z
    + avg_fBodyAccJerk-std()-X
    + avg_fBodyAccJerk-std()-Y
    + avg_fBodyAccJerk-std()-Z
    + avg_fBodyAccJerk-meanFreq()-X
    + avg_fBodyAccJerk-meanFreq()-Y
    + avg_fBodyAccJerk-meanFreq()-Z
    + avg_fBodyGyro-mean()-X
    + avg_fBodyGyro-mean()-Y
    + avg_fBodyGyro-mean()-Z
    + avg_fBodyGyro-std()-X
    + avg_fBodyGyro-std()-Y
    + avg_fBodyGyro-std()-Z
    + avg_fBodyGyro-meanFreq()-X
    + avg_fBodyGyro-meanFreq()-Y
    + avg_fBodyGyro-meanFreq()-Z
    + avg_fBodyAccMag-mean()
    + avg_fBodyAccMag-std()
    + avg_fBodyAccMag-meanFreq()
    + avg_fBodyBodyAccJerkMag-mean()
    + avg_fBodyBodyAccJerkMag-std()
    + avg_fBodyBodyAccJerkMag-meanFreq()
    + avg_fBodyBodyGyroMag-mean()
    + avg_fBodyBodyGyroMag-std()
    + avg_fBodyBodyGyroMag-meanFreq()
    + avg_fBodyBodyGyroJerkMag-mean()
    + avg_fBodyBodyGyroJerkMag-std()
    + avg_fBodyBodyGyroJerkMag-meanFreq()


### Extract from the original Smartphones Data Set file 'features_info.txt'
***

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* [OTHER VARIABLES REDACTED]

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
