## set the main path to the working directory
directory<-setwd("~/Desktop/Coursera/UCI HAR Dataset/")

## Load the test subjects
tSub<-read.table(paste(directory,"/test/subject_test.txt",sep=""))  
## Load the test activities
tYvals<-read.table(paste(directory,"/test/y_test.txt",sep=""))
## Load the test subjects measurements
tXvals<-read.table(paste(directory,"/test/X_test.txt",sep=""))

## Load the activity labels
ActLab<-read.table(paste(directory,"/activity_labels.txt",sep=""))

## Merge activity with test subjects
tActLab<-merge(tYvals,ActLab,by="V1")

## Combine Subjects, activity and measurements to single data frame
tSubAct<-data.frame(c(tSub,tActLab,tXvals))

## Load the training subjects
rSub<-read.table(paste(directory,"/train/subject_train.txt",sep="")) 
## Load the train activities
rYvals<-read.table(paste(directory,"/train/y_train.txt",sep=""))
## Merge the training subjects and activities
rActLab<-merge(rYvals,ActLab,by="V1")

## load the train measurements
rXvals<-read.table(paste(directory,"/train/X_train.txt",sep=""))

## Combine train subjects, activities and measurements to one data frame
rSubAct<-data.frame(c(rSub,rActLab,rXvals))

##Merge train and test data sets
trSubAct<-rbind(tSubAct,rSubAct) 

## Identify only the mean and std deviation columns
features<-read.table("features.txt") 
meanid<-grep("mean",features$V2,fixed=TRUE) 
meannames<-grep("mean",features$V2,value=TRUE) 
stdDevid<-grep("std",features$V2,fixed=TRUE) 
stdDevnames<-grep("std",features$V2,value=TRUE) 
meanstd<-c(meanid,stdDevid)  

## Get a subset of only the mean and stddeviation values
trSubAct<-data.frame(c(trSubAct[1:3],trSubAct[meanstd+3]))

## assign correct names to the variables
colnames(trSubAct)<-(c("Subject","Activity","ActivityName",meannames,stdDevnames)) 

## Aggregate the average of mean and std dev values by subject and activity
traSubAct<-aggregate(trSubAct[,4:82], by=list(subject=trSubAct$Subject,activity=trSubAct$Activity),  FUN=mean)

##Write the final results to a tidydataset text file
write.table(traSubAct,"tidydataset.txt",sep=";",row.name=FALSE)


