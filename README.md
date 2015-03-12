# Getting-and-Cleaning-Data Course Project
##1.Merges the training and the test sets to create one data set
*training_set:Traning set.
*test_set:Test set.
*dataset:Merge Traning set and test set.
##2.Extracts only the measurements on the mean and standard deviation for each measurement
*features:List of all features.
*selectnames:The features contain mean and stadard deeviation.
*dataset:.Extracts only the measurements on the mean and standard deviation for each measurement.
##3.Uses descriptive activity names to name the activities in the data set
*traning_labels:Training labels.
*test_labels:Test labels.
*labels:Merge training labels and test labels.
*dataset:Name activities to the data set
##4.Appropriately labels the data set with descriptive variable names
*activity_labels:Links the class labels with their activity name.
*subject_train:The subjects who performed the activity for each window sample in training set. Range:1to30. 
*subjiect_test:The subjects who performed the activity for each window sample in test set. Range:1to30. 
*subject:Merge subject_train and subjiect_test.
*dataset:Labels the data set with descriptive variable names.
##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for
##each activity and each subjet
*sp:Grouped by  each activity and each subjet.
*dataset2:creates a independent tidy data set with the average of each variable for each activity and each subjet




