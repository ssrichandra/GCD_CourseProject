# Code Book

This is the code book for the Data Science (Coursera-JHBSP) - Getting &amp; Cleaning Data Course Project.
The following describes the variables, data and transformations performed to combine and clean up the UCI Human Activity Recognition (HAR) data set available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into the **tidy.txt file**

## Data

####ID Columns
The Subject and Activity columns represent the ID for each of the records in the dataset

*Subject:*
The identifier of the subject who performed the activity for each window sample. Its range is from 1 to 30.

*Activity:*
The type of activity undertaken when the measurements were recorded. 6 types: 
1. Walking
2. Walking Upstairs
3. Walkind Downstairs
4. Sitting
5. Standing
6. Laying

####Measurements
The following are all the Mean and Standard Deviation Recordings that the run_Analysis code will output. 
Some prefixes:
*Acc - Accelerometer signals (in hertz)
*Gravity - Gravity signals (in hertz)

tBodyAcc_Mean_X
tBodyAcc_Mean_Y
tBodyAcc_Mean_Z
tBodyAcc_Std_Dev_X
tBodyAcc_Std_Dev_Y
tBodyAcc_Std_Dev_Z
tGravityAcc_Mean_X
tGravityAcc_Mean_Y
tGravityAcc_Mean_Z
tGravityAcc_Std_Dev_X
tGravityAcc_Std_Dev_Y
tGravityAcc_Std_Dev_Z
tBodyAccJerk_Mean_X
tBodyAccJerk_Mean_Y
tBodyAccJerk_Mean_Z
tBodyAccJerk_Std_Dev_X
tBodyAccJerk_Std_Dev_Y
tBodyAccJerk_Std_Dev_Z
tBodyGyro_Mean_X
tBodyGyro_Mean_Y
tBodyGyro_Mean_Z
tBodyGyro_Std_Dev_X
tBodyGyro_Std_Dev_Y
tBodyGyro_Std_Dev_Z
tBodyGyroJerk_Mean_X
tBodyGyroJerk_Mean_Y
tBodyGyroJerk_Mean_Z
tBodyGyroJerk_Std_Dev_X
tBodyGyroJerk_Std_Dev_Y
tBodyGyroJerk_Std_Dev_Z
tBodyAccMag_Mean_
tBodyAccMag_Std_Dev_
tGravityAccMag_Mean_
tGravityAccMag_Std_Dev_
tBodyAccJerkMag_Mean_
tBodyAccJerkMag_Std_Dev_
tBodyGyroMag_Mean_
tBodyGyroMag_Std_Dev_
tBodyGyroJerkMag_Mean_
tBodyGyroJerkMag_Std_Dev_
fBodyAcc_Mean_X
fBodyAcc_Mean_Y
fBodyAcc_Mean_Z
fBodyAcc_Std_Dev_X
fBodyAcc_Std_Dev_Y
fBodyAcc_Std_Dev_Z
fBodyAcc_Mean_FreqX
fBodyAcc_Mean_FreqY
fBodyAcc_Mean_FreqZ
fBodyAccJerk_Mean_X
fBodyAccJerk_Mean_Y
fBodyAccJerk_Mean_Z
fBodyAccJerk_Std_Dev_X
fBodyAccJerk_Std_Dev_Y
fBodyAccJerk_Std_Dev_Z
fBodyAccJerk_Mean_FreqX
fBodyAccJerk_Mean_FreqY
fBodyAccJerk_Mean_FreqZ
fBodyGyro_Mean_X
fBodyGyro_Mean_Y
fBodyGyro_Mean_Z
fBodyGyro_Std_Dev_X
fBodyGyro_Std_Dev_Y
fBodyGyro_Std_Dev_Z
fBodyGyro_Mean_FreqX
fBodyGyro_Mean_FreqY
fBodyGyro_Mean_FreqZ
fBodyAccMag_Mean_
fBodyAccMag_Std_Dev_
fBodyAccMag_Mean_Freq
fBodyBodyAccJerkMag_Mean_
fBodyBodyAccJerkMag_Std_Dev_fBodyBodyAccJerkMag_Mean_Freq
fBodyBodyGyroMag_Mean_
fBodyBodyGyroMag_Std_Dev_
fBodyBodyGyroMag_Mean_Freq
fBodyBodyGyroJerkMag_Mean_
fBodyBodyGyroJerkMag_Std_Dev_fBodyBodyGyroJerkMag_Mean_Freq


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
*More information about the data is available in the Features_info.txt file contained in the zip
*Only Mean and Standard Deviation columns were analysed in the tidy.txt file

