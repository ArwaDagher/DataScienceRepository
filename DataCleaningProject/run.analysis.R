###STEP 1

# reading Train dataset
train.data <- read.table("train/X_train.txt")
train.label <- read.table("train/y_train.txt", col.names = "label")
train.subject <- read.table("train/subject_train.txt", col.names = "subject")

#Create one table for Train
train.table <- cbind(train.subject, train.label, train.data)

#Reading Test dataset
test.data <- read.table("test/X_test.txt")
test.label <- read.table("test/y_test.txt", col.names = "label")
test.subject <- read.table("test/subject_test.txt", col.names = "subject")

# Create one table for Test
test.table <- cbind(test.subject, test.label, test.data)

#Merge Test and Train together
full.data <- rbind(cbind(test.table),train.table)

### Step 2
# Read Features to extract mean and std

features <- read.table("features.txt", stringsAsFactors = FALSE)
features <- make.names(features[,"V2"])
mean_std <- full.data[,grep("std|mean", x=features, ignore.case = TRUE)]

###Step 3
#Read Activity-names
activity.labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
#Renames the lables as in activity labels
mean_std$label <- activity.labels[mean_std$label,2]

### Step 4
features <- c("subject", "activity", features)
colnames(full.data) <- features
# Correcting Variable Names
names(full.data) <- gsub("Acc", "Acceleration", names(full.data))
names(full.data) <- gsub("GyroJerk", "AngularAcceleration", names(full.data))
names(full.data) <- gsub("Gyro", "AngularSpeed", names(full.data))
names(full.data) <- gsub("Mag", "Magnitude", names(full.data))
names(full.data) <- gsub("^t", "TimeDomain", names(full.data))
names(full.data) <- gsub("^f", "Frequency Domain", names(full.data))
names(full.data) <- gsub("\\.mean", ".Mean", names(full.data))
names(full.data) <- gsub("\\.std", ".StandardDeviation", names(full.data))
names(full.data) <- gsub("Freq\\.", "Frequency", names(full.data))
names(full.data) <- gsub("Freq$", "Frequency", names(full.data))

###Step5
# Aggregating the average according to the subject and activity
average.data <- aggregate(full.data[, 3:ncol(full.data)],
                       by=list(subject = full.data$subject, 
                               label = full.data$activity),
                       mean)
# Writing final tidy Data
write.table(average.data, file = "tidy_Data.txt")