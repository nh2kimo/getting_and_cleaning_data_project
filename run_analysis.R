## loading train group -----
X.train <- read.table(file="./dataset/train/X_train.txt", sep = "")
subject.train <- read.table(file="./dataset/train/subject_train.txt", sep = "") 
y.train <- read.table(file="./dataset/train/y_train.txt", sep = "")

## set features names to train data
features.names <- read.table(file="./dataset/features.txt", sep = "")
colnames(X.train) <- features.names[,2]

## combine train data
x.train <- cbind(subject.train, y.train, X.train)
colnames(x.train)[1:2] <- c("subjects", "activity.labels")

## loading test group
X.test <- read.table(file="./dataset/test/X_test.txt", sep = "")
subject.test <- read.table(file="./dataset/test/subject_test.txt", sep = "") 
y.test <- read.table(file="./dataset/test/y_test.txt", sep = "")

## set features names to test data
colnames(X.test) <- features.names[,2]

## combine test data
x.test <- cbind(subject.test, y.test, X.test)
colnames(x.test)[1:2] <- c("subjects", "activity.labels")

##combine train and test data
total.data <- rbind(x.test, x.train)

## writs to file txt and csv
write.table(total.data, file="./dataset/total.txt", sep=" ", row.names = F)
write.table(total.data, file="./dataset/total.csv", sep=",", row.names = F)

## extract data only mean and std ----
sel.mean <- grep("mean", names(total.data))
sel.std <- grep("std", names(total.data))
total.sel <- c(sel.mean, sel.std)
total.data.sel <- total.data[, c(1, 2, total.sel)]  ##其實也可以從colname選，應該比較快

## label the activity ----
activity.names <- c("Walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying")
total.data.sel.new <- total.data[, c(1, 2, total.sel)]  ###驗証用
total.data.sel$activity.labels <- factor(total.data.sel$activity.labels, levels = c(1:6), labels = activity.names) ##轉換label

## created data with average, group by activity and subject
library(data.table)
total.data.sel.table <- as.data.table(total.data.sel)
final.table <- total.data.sel.table[, lapply(.SD, mean), by= list(subjects=subjects,activity.labels=activity.labels)]
final.table2 <- total.data.sel.table[, lapply(.SD, mean), by= list(subjects=subjects,activity.labels=activity.labels)][order(subjects)]  ##order by subjects

##write table ----
write.table(final.table2, file="./dataset/final.txt", sep=" ", row.names = F)
write.table(final.table2, file="./dataset/final.csv", sep=",", row.names = F)
