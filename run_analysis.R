library(dplyr)

# read data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
train <- read.table("UCI HAR Dataset/train/subject_train.txt")

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
test <- read.table("UCI HAR Dataset/test/subject_test.txt")

features <- read.table("UCI HAR Dataset/features.txt")

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# 1. Merges the training and the test sets to create one data set.
X_total <- rbind(X_train, X_test)
y_total <- rbind(y_train, y_test)
total <- rbind(train, test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
var <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
X_total <- X_total[,var[,1]]

# 3. Uses descriptive activity names to name the activities in the data set
colnames(y_total) <- "activity"
y_total$activitylabel <- factor(y_total$activity, labels = as.character(activity_labels[,2]))
activitylabel <- y_total[,-1]

# 4. Appropriately labels the data set with descriptive variable names.
colnames(X_total) <- features[var[,1],2]

# 5. From the data set in step 4, creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.
colnames(total) <- "subject"
total <- cbind(X_total, activitylabel, total)
total_mean <- total %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(total_mean, file = "UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)
tidydata <- read.table("UCI HAR Dataset/tidydata.txt")
View(tidydata)
