# Getting and Cleaning Data Course Project
# by Dan C.

# 1. Merge the training and the test sets to create one data set.

#   a. load training and test sets
x_test <- read.table("./data/ucidataset/test/X_test.txt")
y_test <- read.table("./data/ucidataset/test/y_test.txt")
subject_test <- read.table("./data/ucidataset/test/subject_test.txt")
x_train <- read.table("./data/ucidataset/train/X_train.txt")
y_train <- read.table("./data/ucidataset/train/y_train.txt")
subject_train <- read.table("./data/ucidataset/train/subject_train.txt")

#   b. load feature names
features <- read.table("./data/ucidataset/features.txt")

#   c. combine subject, activity, and measurements for test and training sets 
testdf <- cbind(subject_test,y_test,x_test)
traindf <- cbind(subject_train,y_train,x_train)

#   d. rename columns as "subject", "activity" and the feature names from features.txt
names(testdf) <- c("subject","activity",as.character(features$V2))
names(traindf) <- c("subject","activity",as.character(features$V2))

#   e. combine training and test data
combineddf <- rbind(traindf,testdf)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.
extractdf <- combineddf[,c("subject","activity",grep("mean|std",names(combineddf),value=TRUE))]


# 3. Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("./data/ucidataset/activity_labels.txt")
withactivitydf <- merge(extractdf,activity_labels,by.x="activity",by.y="V1",all=FALSE)
withactivitydf <- withactivitydf[,c("subject","V2",names(withactivitydf[3:81]))]
names(withactivitydf)[2] <- "activity"

# 4. Appropriately label the data set with descriptive variable names.
#   completed in 1d. above

# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable 
#    for each activity and each subject.

library(dplyr)
withactivitytbl <- tbl_df(withactivitydf)
actsubjmean <- summarize_all(actsubj,mean)
# rename columns to indicate that the quantities are averages
names(actsubjmean)[3:81] <- paste0("avg_",names(actsubjmean)[3:81])

# write output to table
write.table(actsubjmean,file="results.txt",row.names=FALSE)