library(dplyr)

##1. Merges the training and the test sets to create one data set.

##download file, unzip the file, and set directory to the top level folder

##read and combine train data

trainfiles<-list.files(path="./train", pattern="*.txt")
trainfiles<-c(trainfiles[1], trainfiles[3], trainfiles[2])
trainfiles<-paste0("./train/",trainfiles)
traindatalist<-lapply(trainfiles, function(x)read.table(x))
traindata<-do.call("cbind", traindatalist)
rm(traindatalist)

##read and combine test data
testfiles<-list.files(path="./test", pattern="*.txt")
testfiles<-c(testfiles[1], testfiles[3], testfiles[2])
testfiles<-paste0("./test/",testfiles)
testdatalist<-lapply(testfiles, function(x)read.table(x))
testdata<-do.call("cbind", testdatalist)
rm(testdatalist)

##combine test and train data
rundata<-rbind(traindata, testdata)

##add appropriate column names
##import column names for the "x" file from feature file, removes number from  
##file name, also adds subject and activity to first two columns
xnames<-read.delim("./features.txt", header=FALSE)
xnames<-sub(".+? ","",xnames$V1)
allnames<-c("subject", "activitynumber", xnames)
names(rundata)<-allnames

##2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.

rundata<-rundata %>% select(subject, activitynumber, contains(c("mean", "std")))

##3. Uses descriptive activity names to name the activities in the data set
activitynames<-read.table("./activity_labels.txt")
getactivityname<-activitynames$V2
names(getactivityname)<-activitynames$V1
##function for lookup vector
get_activity_name<-function(activitynumber, lookupvector=getactivityname){
  activity<-unname(lookupvector[activitynumber])
  return(activity)}
##use lookup vector to convert number to name; delete number column
rundata <-rundata %>% 
  mutate( activity=get_activity_name(activitynumber)) %>% 
  relocate(activity, .after=activitynumber) %>% select(-activitynumber)


##4. Appropriately labels the data set with descriptive variable names.

##column names were added in step 1
##convert t to time; Acc to Acceleromter and Gyro to Gyroscope per 
##original data's readme

longnames<-names(rundata)
longnames<-sub("^t", "time ", longnames)
longnames<-sub("^f", "frequency ", longnames)

longnames<-sub("Acc", " Accelerometer", longnames)
longnames<-sub("Gyro", " Gyroscope", longnames)
names(rundata)<-longnames

##5. From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.

runsummary<-rundata %>% group_by(subject,activity) %>%
  summarize(across(1:86, mean), .groups="keep")
write.table(runsummary,file="./runsummary.txt", row.names = FALSE)

