# Code Book

This is the code book for the Data Science (Coursera-JHBSP) - Getting &amp; Cleaning Data Course Project.
The following describes the variables, data and transformations performed to combine and clean up the UCI Human Activity Recognition (HAR) data set available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into the **tidy.txt file**

## Data

####ID Columns
The Subject and Activity columns represent the ID for each of the records in the dataset

*Subject:*
The identifier of the subject who performed the activity for each window sample. Its range is from 1 to 30.

*Activity:*
The type of activity undertaken when the measurements were recorded.

6 types of Activity:

1. Walking

2. Walking Upstairs

3. Walkind Downstairs

4. Sitting

5. Standing

6. Laying

####Measurements
The following are all the Mean and Standard Deviation Recordings that the run_Analysis code will output. 

Some prefixes:
* *Acc* - Accelerometer signals (in hertz)
* *Gravity* - Gravity signals (in hertz)

* Subject
* Activity
* tBodyAcc_MeanX
* tBodyAcc_MeanY
* tBodyAcc_MeanZ
* tBodyAcc_StdDevX
* tBodyAcc_StdDevY
* tBodyAcc_StdDevZ
* tGravityAcc_MeanX
* tGravityAcc_MeanY
* tGravityAcc_MeanZ
* tGravityAcc_StdDevX
* tGravityAcc_StdDevY
* tGravityAcc_StdDevZ
* tBodyAccJerk_MeanX
* tBodyAccJerk_MeanY
* tBodyAccJerk_MeanZ
* tBodyAccJerk_StdDevX
* tBodyAccJerk_StdDevY
* tBodyAccJerk_StdDevZ
* tBodyGyro_MeanX
* tBodyGyro_MeanY
* tBodyGyro_MeanZ
* tBodyGyro_StdDevX
* tBodyGyro_StdDevY
* tBodyGyro_StdDevZ
* tBodyGyroJerk_MeanX
* tBodyGyroJerk_MeanY
* tBodyGyroJerk_MeanZ
* tBodyGyroJerk_StdDevX
* tBodyGyroJerk_StdDevY
* tBodyGyroJerk_StdDevZ
* tBodyAccMag_Mean
* tBodyAccMag_StdDev
* tGravityAccMag_Mean
* tGravityAccMag_StdDev
* tBodyAccJerkMag_Mean
* tBodyAccJerkMag_StdDev
* tBodyGyroMag_Mean
* tBodyGyroMag_StdDev
* tBodyGyroJerkMag_Mean
* tBodyGyroJerkMag_StdDev
* fBodyAcc_MeanX
* fBodyAcc_MeanY
* fBodyAcc_MeanZ
* fBodyAcc_StdDevX
* fBodyAcc_StdDevY
* fBodyAcc_StdDevZ
* fBodyAcc_MeanFreqX
* fBodyAcc_MeanFreqY
* fBodyAcc_MeanFreqZ
* fBodyAccJerk_MeanX
* fBodyAccJerk_MeanY
* fBodyAccJerk_MeanZ
* fBodyAccJerk_StdDevX
* fBodyAccJerk_StdDevY
* fBodyAccJerk_StdDevZ
* fBodyAccJerk_MeanFreqX
* fBodyAccJerk_MeanFreqY
* fBodyAccJerk_MeanFreqZ
* fBodyGyro_MeanX
* fBodyGyro_MeanY
* fBodyGyro_MeanZ
* fBodyGyro_StdDevX
* fBodyGyro_StdDevY
* fBodyGyro_StdDevZ
* fBodyGyro_MeanFreqX
* fBodyGyro_MeanFreqY
* fBodyGyro_MeanFreqZ
* fBodyAccMag_Mean
* fBodyAccMag_StdDev
* fBodyAccMag_MeanFreq
* fBodyBodyAccJerkMag_Mean
* fBodyBodyAccJerkMag_StdDev
* fBodyBodyAccJerkMag_MeanFreq
* fBodyBodyGyroMag_Mean
* fBodyBodyGyroMag_StdDev
* fBodyBodyGyroMag_MeanFreq
* fBodyBodyGyroJerkMag_Mean
* fBodyBodyGyroJerkMag_StdDev
* fBodyBodyGyroJerkMag_MeanFreq



##Transformations
The following text files were used to generate the preliminary data table.

1. UCI HAR Dataset/activity_labels.txt

2. UCI HAR Dataset/features.txt

3. UCI HAR Dataset/train/X_train.txt

4. UCI HAR Dataset/train/Y_train.txt

5. UCI HAR Dataset/train/subject_train.txt

6. UCI HAR Dataset/test/X_test.txt

7. UCI HAR Dataset/test/y_test.txt

8. UCI HAR Dataset/test/subject_test.txt


##Additional Notes
* More information about the data is available in the Features_info.txt file contained in the zip
* Only Mean and Standard Deviation columns were analysed in the tidy.txt file

