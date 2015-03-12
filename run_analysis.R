#-----------------------------------------------------------------------------------------
#1.Merges the training and the test sets to create one data set.
training_set<-read.table("./train/X_train.txt")
test_set<-read.table("./test/X_test.txt")
dataset<-rbind(training_set,test_set)

#-----------------------------------------------------------------------------------------
#2.Extracts only the measurements on the mean and standard deviation for each measurement
features<-read.table("features.txt")[2]
colnames(features)<-"featurenames"
colnames(dataset)<-features$featurenames
selectnames<-sort(c(grep("mean",features$featurenames),grep("std",features$featurenames)))
dataset<-dataset[selectnames]

#-----------------------------------------------------------------------------------------
#3.Uses descriptive activity names to name the activities in the data set
traning_labels<-read.table("train/y_train.txt")
test_labels<-read.table("test/y_test.txt")
labels<-rbind(traning_labels,test_labels)
colnames(labels)<-"activity"
dataset<-cbind(labels,dataset)

#-----------------------------------------------------------------------------------------
#4.Appropriately labels the data set with descriptive variable names.
activity_labels<-read.table("activity_labels.txt")[2]
dataset$activity<-factor(dataset$activity,labels=activity_labels$V2)
subject_train<-read.table("./train/subject_train.txt")
subject_test<-read.table("./test/subject_test.txt")
subject<-rbind(subject_train,subject_test)
colnames(subject)<-"subject"
dataset<-cbind(subject,dataset)

#-----------------------------------------------------------------------------------------
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subjet
sp<-split(dataset,dataset[2:1])
dataset2<-sapply(sp,function(dataset) colMeans(dataset[-(1:2)]))
write.table(dataset2,file="dataset2.txt",sep=";",row.names=FALSE)

