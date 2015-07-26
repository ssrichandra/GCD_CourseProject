#Coursera Data Science - Getting & Cleaning Data Course Project

#Set working directory first!

#Load Libraries
        library(reshape2)

#Obtain the data for this project

        filename<-"data.zip"
        
        #Download file and unzip it
        
        fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        
        download.file(fileURL, filename)
        
        unzip(filename)
        
        
        #The data set consists of multiple partial files that need to be combined together
        
                #1. Labels: Activity Labels.txt
        
                lbl_activity <- read.table("UCI HAR Dataset/activity_labels.txt")
                        
        
                #2. Features.txt
        
                features <- read.table("UCI HAR Dataset/features.txt")
        
                        #Change labels from Factor Class to Character class - 2nd column
                        lbl_activity[,2] <- as.character(lbl_activity[,2])
                        features[,2] <- as.character(features[,2])
        
        
                        #Subset Features to only include mean and std deviation labels
        
                        FeaturesExtract <- grep("mean|std",features[[2]])
                                                                        
                        FeaturesExtractNames <- features[FeaturesExtract,2]
        
                        #Clean up FeaturesExtractNames for extra characters like (), -
        
                        FeaturesExtractNames <- gsub("-mean","_Mean",FeaturesExtractNames)
                        FeaturesExtractNames <- gsub("-std","_StdDev",FeaturesExtractNames)
                        FeaturesExtractNames <- gsub("[-()]","",FeaturesExtractNames)
        
                #3. Training and Test Data set load
        
                train <- read.table("UCI HAR Dataset/train/X_train.txt")[FeaturesExtract]
                trainActs <- read.table("UCI HAR Dataset/train/Y_train.txt")
                trainSubs <- read.table("UCI HAR Dataset/train/subject_train.txt")
        
                        #Combine columns for Training tables
        
                        train <- cbind(trainSubs,trainActs,train)
        
                test <- read.table("UCI HAR Dataset/test/X_test.txt")[FeaturesExtract]
                testActs <- read.table("UCI HAR Dataset/test/y_test.txt")
                testSubs <- read.table("UCI HAR Dataset/test/subject_test.txt")
        
                        #Combine columns for Test tables
                        test <- cbind(testSubs,testActs,test)
        
                #4. ***MERGE TRAINING AND TEST DATASETS TOGETHER***
        
                HARData <- rbind(train,test)
        
                colnames(HARData) <- c("Subject","Activity",FeaturesExtractNames)
        
        
                #5. Convert Subect and Activity to Factors
                
                HARData$Subject <- as.factor(HARData$Subject)
                HARData$Activity <- factor(HARData$Activity, levels = lbl_activity[,1], labels = lbl_activity[,2])
        
#Reshape the data to allow for variable means to be written into a the tidy.txt table
        
        #Melt data, where ID is the Subject and Activity Factors, rest become rows
        
        HARData_melt <- melt(HARData,id=c("Subject","Activity"))
        
#Compute means of each variable, by subject and by activity
        
HARData_means <- dcast(HARData_melt, Subject + Activity ~ variable, mean)
        

#Write Table to tidy.txt
        
write.table(HARData_means,"tidy.txt", row.names=FALSE, quote=FALSE)
        