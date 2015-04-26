---
title: "CodeBook"
author: "Matthew Chang Kit"
date: "Saturday, April 25, 2015"
output: html_document
---
The tidy data contains 180 records, corresponding to 30 subjects' average activity data for 6 types of activities.

There are 68 variables in the tidy data. 66 variables represent the average of mean values and their standard deviation values for data collected from different sensors. The last two variables stand for Activity and Subject respectively. A more comprehensive list is shown below.

VARIABLE NAME                                       VARIABLE TYPE
-------------------------------------------------   --------------
TimeBodyAccelerometerMean()-X                       numeric
TimeBodyAccelerometerMean()-Y                       numeric
TimeBodyAccelerometerMean()-Z                       numeric
TimeBodyAccelerometerSTDev()-X                      numeric
TimeBodyAccelerometerSTDev()-Y                      numeric
TimeBodyAccelerometerSTDev()-Z                      numeric
TimeGravityAccelerometerMean()-X                    numeric
TimeGravityAccelerometerMean()-Y                    numeric
TimeGravityAccelerometerMean()-Z                    numeric
TimeGravityAccelerometerSTDev()-X                   numeric
TimeGravityAccelerometerSTDev()-Y                   numeric
TimeGravityAccelerometerSTDev()-Z                   numeric
TimeBodyAccelerometerJerkMean()-X                   numeric
TimeBodyAccelerometerJerkMean()-Y                   numeric
TimeBodyAccelerometerJerkMean()-Z                   numeric
TimeBodyAccelerometerJerkSTDev()-X                  numeric
TimeBodyAccelerometerJerkSTDev()-Y                  numeric
TimeBodyAccelerometerJerkSTDev()-Z                  numeric
TimeBodyGyroscopeMean()-X                           numeric
TimeBodyGyroscopeMean()-Y                           numeric
TimeBodyGyroscopeMean()-Z                           numeric
TimeBodyGyroscopeSTDev()-X                          numeric
TimeBodyGyroscopeSTDev()-Y                          numeric
TimeBodyGyroscopeSTDev()-Z                          numeric
TimeBodyAccelerometerMagnitudeMean()                numeric
TimeBodyAccelerometerMagnitudeSTDev()               numeric
TimeGravityAccelerometerMagnitudeMean()             numeric
TimeGravityAccelerometerMagnitudeSTDev()            numeric
TimeBodyGyroscopeMagnitudeMean()                    numeric
TimeBodyGyroscopeMagnitudeSTDev()                   numeric
TimeBodyGyroscopeJerkMagnitudeMean()                numeric
TimeBodyGyroscopeJerkMagnitudeSTDev()               numeric
FrequencyBodyAccelerometerMean()-X                  numeric
FrequencyBodyAccelerometerMean()-Y                  numeric
FrequencyBodyAccelerometerMean()-Z                  numeric
FrequencyBodyAccelerometerSTDev()-X                 numeric
FrequencyBodyAccelerometerSTDev()-Y                 numeric
FrequencyBodyAccelerometerSTDev()-Z                 numeric
FrequencyBodyAccelerometerMeanFreq()-X              numeric
FrequencyBodyAccelerometerMeanFreq()-Y              numeric
FrequencyBodyAccelerometerMeanFreq()-Z              numeric
FrequencyBodyGyroscopeMean()-X                      numeric
FrequencyBodyGyroscopeMean()-Y                      numeric
FrequencyBodyGyroscopeMean()-Z                      numeric
FrequencyBodyGyroscopeSTDev()-X                     numeric
FrequencyBodyGyroscopeSTDev()-Y                     numeric
FrequencyBodyGyroscopeSTDev()-Z                     numeric
FrequencyBodyGyroscopeMeanFreq()-X                  numeric
FrequencyBodyGyroscopeMeanFreq()-Y                  numeric
FrequencyBodyGyroscopeMeanFreq()-Z                  numeric
FrequencyBodyAccelerometerMagnitudeMean()           numeric
FrequencyBodyAccelerometerMagnitudeSTDev()          numeric
FrequencyBodyAccelerometerMagnitudeMeanFreq()       numeric
FrequencyBodyAccelerometerJerkMagnitudeMean()       numeric
FrequencyBodyAccelerometerJerkMagnitudeSTDev()      numeric
FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()   numeric
FrequencyBodyGyroscopeMagnitudeMean()               numeric
FrequencyBodyGyroscopeMagnitudeSTDev()              numeric
FrequencyBodyGyroscopeMagnitudeMeanFreq()           numeric
FrequencyBodyGyroscopeJerkMagnitudeMean()           numeric
FrequencyBodyGyroscopeJerkMagnitudeSTDev()          numeric
FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()       numeric
Angle(TimeBodyAccelerometerMean,Gravity)            numeric
Angle(TimeBodyAccelerometerJerkMean),GravityMean)   numeric
Angle(TimeBodyGyroscopeMean,GravityMean)            numeric
Angle(TimeBodyGyroscopeJerkMean,GravityMean)        numeric
Angle(X,GravityMean)                                numeric
Angle(Y,GravityMean)                                numeric
Angle(Z,GravityMean)                                numeric
Activity                                            
 -- Laying                                          character
 -- Sitting                                         character 
 -- Walking                                         character
 -- Walking Downstairs                              character
 -- Walking Upstairs                                character
Subject                                             integer










