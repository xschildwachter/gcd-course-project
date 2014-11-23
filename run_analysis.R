#!/bin.env R

##  Get all the data in a single data frame

# Test data
test.subject.data <- read.csv("./test/subject_test.txt", header=FALSE)
test.x.data <- read.table("./test//X_test.txt", header = FALSE)
test.y.data <- read.table("./test//y_test.txt", header = FALSE)
# Combine
test.data <- cbind(test.subject.data, test.x.data, test.y.data)

# Training data
train.subject.data <- read.csv("./train/subject_train.txt", header=FALSE)
train.x.data <- read.table("./train//X_train.txt", header = FALSE)
train.y.data <- read.table("./train//y_train.txt", header = FALSE)

# Combine
train.data <- cbind(train.subject.data, train.x.data, train.y.data)

# All data
data <- rbind(test.data, train.data)

##  Fix the feature names so they can be used as column names

features.raw <- read.table(file="./features.txt", header=FALSE)
# Need to fix this!!!
features.names <- gsub('\\(', '', gsub(')', '', features.raw[,2]))
features.names <- gsub('-', '.', features.names)
features.names <- gsub(',', '_', features.names)
# Use as column names
colnames(data) <- c("subject.id", features.names, "activity.id")

##  Extract the columns related to std or mean

# Offset by 1 in data
features.filtered.idx <- features.raw[c(grep('mean', tolower(features.raw[,2])), grep('std', tolower(features.raw[,2]))), 1] + 1
# Take subject.id, columns about std and mean, and activity
data.filtered <- data[, c(1, features.filtered.idx, ncol(data))]

##  Replace activity.id by activity.name

activity.labels <- read.table("./activity_labels.txt", header=FALSE)
colnames(activity.labels) <- c('id', 'name')
# Replace activity ids by names
data.filtered[, ncol(data.filtered)] <- activity.labels[data.filtered[,ncol(data.filtered)],]$name
# Fix column name
colnames(data.filtered)[ncol(data.filtered)] <- "activity.name"

##  Make the tidy data set

# Compute mean for each variable group by activity and subject
data.tidy <- aggregate(data.filtered[,seq(2,ncol(data.filtered)-1)], list(data.filtered$activity.name, data.filtered$subject.id), FUN=mean)
# Fix column names
colnames(data.tidy)[1] <- "activity.name"
colnames(data.tidy)[2] <- "subject.id"

##  Save the tidy data set

write.table(data.tidy, file="./gcd-course-project-tidy-data.txt", row.name=FALSE)



