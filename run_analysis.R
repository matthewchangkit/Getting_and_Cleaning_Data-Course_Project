# We first create a folder within the Coursera folder, download the  
# file and then unzip it creating a file called UCI HAR Dataset

library(data.table)
library(dplyr)
library(knitr)

if(!file.exists("./pa2")){dir.create("./pa2")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/
getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./pa2/Dataset.zip")
unzip(zipfile = "./pa2/Dataset.zip",exdir="./pa2")

# We now get the list of the subfolders and subfiles contained
# in this folder
path_rf <- file.path("./pa2","UCI HAR Dataset")
all_files <- list.files(path_rf,recursive=T)
all_files

# We see that there are supporting files which will aid in 
# describing the files that we will use.
featuresNames <- read.table("./pa2/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./pa2/UCI HAR Dataset/activity_labels.txt",
                              header = FALSE)

# From the files listed we see that both training and test
# sets comprise of subject, features and activity labels.
# As such we shall denote these descriptions to our datasets.
sub_train <- read.table("./pa2/UCI HAR Dataset/train/subject_train.txt", 
                        header = FALSE)
act_train <- read.table("./pa2/UCI HAR Dataset/train/y_train.txt",
                        header = FALSE)
feat_train <- read.table("./pa2/UCI HAR Dataset/train/X_train.txt",
                         header = FALSE)
sub_test <- read.table("./pa2/UCI HAR Dataset/test/subject_test.txt",
                       header = FALSE)
act_test <- read.table("./pa2/UCI HAR Dataset/test/y_test.txt", 
                       header = FALSE)
feat_test <- read.table("./pa2/UCI HAR Dataset/test/X_test.txt",
                        header = FALSE)

# We now merge our training and test sets
subject <- rbind(sub_train,sub_test)
activity <- rbind(act_train,act_test)
features <- rbind(feat_train,feat_test)

# Applying the respective names to all the new datasets
colnames(features) <- t(featureNames[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
data <- cbind(features,activity,subject)

# Since there are indices with mean and std within them we
# will extract these specific entries
col.with.mean.and.std <- grep(".*Mean.*|.*Std.*",
                           names(data), ignore.case=TRUE)

# we add the activity and subject columns to the list
# and then extract the new data set out of this
specific.columns <- c(col.with.mean.and.std, 562, 563)
dim(data)
n.data <- data[,specific.columns]
dim(n.data)

# We now must add descriptive activity names to name the
# activities in our new data set. Since we see that our
# fields, specifically activity is numeric we change it to 
# character so as to accept the activity names taken from
# activity_labels. Then we make them factors.Similarly we 
# do this with our Subject column.
str(n.data)
n.data$Activity <- as.character(n.data$Activity)
for (i in 1:6){n.data$Activity[n.data$Activity == i] <-
                 as.character(activity_labels[i,2])}
n.data$Activity <- as.factor(n.data$Activity)
n.data$Subject <- as.factor(n.data$Subject)

# Having accopmlished this we now label our new data set
# with their respective descriptive variable names
names(n.data)

# Looking at the names closely we can extrapolate the 
# unique variable names

names(n.data) <- gsub("^t", "Time", names(n.data))
names(n.data) <- gsub("^f", "Frequency", names(n.data))
names(n.data) <- gsub("Acc", "Accelerometer", names(n.data))
names(n.data) <- gsub("Gyro", "Gyroscope", names(n.data))
names(n.data) <- gsub("Mag", "Magnitude", names(n.data))
names(n.data) <- gsub("BodyBody", "Body", names(n.data))

names(n.data) <- gsub("tBody", "TimeBody", names(n.data))
names(n.data) <- gsub("-mean()", "Mean", names(n.data),
                    ignore.case = TRUE)
names(n.data) <- gsub("-std()", "STDev",names(n.data), 
                    ignore.case = TRUE)
names(n.data) <- gsub("-freq()", "Frequency", names(n.data), 
                    ignore.case = TRUE)
names(n.data) <- gsub("angle", "Angle", names(n.data))
names(n.data) <- gsub("gravity", "Gravity", names(n.data))
names(n.data)

# Finally we will now create our tidy data set. We first
# order the data into a data table.
n.data <- data.table(n.data)

# Now we create the tidy data set  with the average of 
# each variable for each activity and each subject.
Tidy.Data <- aggregate(. ~ Subject + Activity, n.data,mean)
Tidy.Data <- Tidy.Data[order(Tidy.Data$Subject,Tidy.Data$Activity),]
write.table(Tidy.Data,file = "Tidy_Data.txt",row.names=F)















