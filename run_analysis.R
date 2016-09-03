library(plyr)
library(dplyr)
#Read the test data and the acitivity and subject ids. 
x_test <- read.table("UCIHAR/test/X_test.txt")
y_test <- read.table("UCIHAR/test/Y_test.txt")
subject_test <- read.table("UCIHAR/test/subject_test.txt")
#Read the features and assign column headers to activity, subject and data columns
heading <- read.table("UCIHAR/features.txt")
names(x_test) <- as.character(heading$V2)
names(y_test) <- "activity_id"
names(subject_test) <- "subject_id"
#Merge the subjects, activity and data columns together into a data frame
test_data <- data.frame(subject_test,y_test,x_test,check.names = FALSE)

#Read the train data and the acitivity and subject ids. 
x_train <- read.table("UCIHAR/train/X_train.txt")
y_train <- read.table("UCIHAR/train/Y_train.txt")
subject_train <- read.table("UCIHAR/train/subject_train.txt")
#Read the features and assign column headers to activity, subject and data columns
names(x_train) <- as.character(heading$V2)
names(y_train) <- "activity_id"
names(subject_train) <- "subject_id"
#Merge the subjects, activity and data columns together into a data frame
train_data <- data.frame(subject_train,y_train,x_train,check.names = FALSE)

#Combine the test and train data using row binding
merged_data <- rbind(test_data,train_data)

#Extract the mean and standard deviation data from the over all data
mean_std_data <- merged_data[,grep("_id|mean[^Freq]|std",names(merged_data))]

#Assign the descriptive acitivty names
levelnames <- read.table("UCIHAR/activity_labels.txt")
mean_std_data$activity_id <- factor(mean_std_data$activity_id,labels = levelnames$V2)

#Modify names of some of the columns headers to be descriptive
names(mean_std_data)<-gsub("^t", "time", names(mean_std_data))
names(mean_std_data)<-gsub("^f", "frequency", names(mean_std_data))
names(mean_std_data)<-gsub("Acc", "Accelerometer", names(mean_std_data))
names(mean_std_data)<-gsub("Gyro", "Gyroscope", names(mean_std_data))
names(mean_std_data)<-gsub("Mag", "Magnitude", names(mean_std_data))
names(mean_std_data)<-gsub("BodyBody", "Body", names(mean_std_data))

#Aggregate the data based on subject and activity id and calculate the mean
mean_std_data <- tbl_df(mean_std_data)
mean_std_data <- arrange(mean_std_data,subject_id,activity_id)
finaldataset <- aggregate(. ~subject_id + activity_id,mean_std_data,mean)

#Write the final dataset as a text file
write.table(finaldataset, file = "UCIHAR/finaltidydata.txt",row.name=FALSE,quote = FALSE)
