## set the main path to the working directory
setwd("~/Desktop/Coursera/UCI HAR Dataset/")
directory<-setwd("~/Desktop/Coursera/UCI HAR Dataset/")

## Load the test subjects
tSub<-read.table(paste(directory,"/test/subject_test.txt",sep=""))  
## Load the test activities
tYvals<-read.table(paste(directory,"/test/y_test.txt",sep=""))
## Load the test subjects measurements
tXvals<-read.table(paste(directory,"/test/X_test.txt",sep=""))

## Load the activity labels
ActLab<-read.table(paste(directory,"/activity_labels.txt",sep=""))

## Combine Subjects, activity and measurements to single data frame
tSubAct<-cbind(tSub,tYvals,tXvals)

## Load the training subjects
rSub<-read.table(paste(directory,"/train/subject_train.txt",sep="")) 
## Load the train activities
rYvals<-read.table(paste(directory,"/train/y_train.txt",sep=""))
## load the train measurements
rXvals<-read.table(paste(directory,"/train/X_train.txt",sep=""))

## Combine train subjects, activities and measurements to one data frame
rSubAct<-cbind(rSub,rYvals,rXvals)

##Merge train and test data sets
trSubAct<-rbind(tSubAct,rSubAct) 

##Load Features.txt to get column names
features<-read.table("features.txt")[,2]
features<-c("Subject","Activity",as.character(features))
##Give descriptive names to vars
features <- gsub("^t", "Time", features)
features <- gsub("^f", "Frequency", features)
features <- gsub("mean", "Mean", features)
features <- gsub("std", "StdDev", features)
features <- gsub("-", "", features)
features <- gsub("BodyBody", "Body", features)
features <- gsub("\\(", "", features)
features <- gsub("\\)", "", features)
features <- gsub("\\,", "", features)

## Identify only the mean and std deviation columns
colnames(trSubAct)<-features
meanstd <- grep("(Mean|Std)", features)
trSubAct <- trSubAct[, c(1,2,meanstd)]

library(plyr)
## Aggregate the average of mean and std dev values by subject and activity
traSubAct<-ddply(trSubAct, c("Subject","Activity"), function(x) colMeans(x[,c(3:88)]))

##Write the final results to a tidydataset text file
write.table(traSubAct,"tidydataset.txt",sep=";",row.name=FALSE)

col<-data.frame(colnames(traSubAct))
