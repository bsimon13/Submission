run_analysis.R <- function() {
  
directory <- getwd() #"C:/Users/Rawdon/Desktop/Brad/Coursera/Assignment 4/UCI HAR Dataset"

# read data sets 
X_train <- read.table(paste(directory,"/Train/X_train.txt", sep = ""))
Y_train <- read.table(paste(directory,"/Train/Y_train.txt", sep = ""))
subject_train <- read.table(paste(directory,"/Train/subject_train.txt", sep = ""))
X_test  <- read.table(paste(directory,"/Test/X_test.txt", sep = ""))
Y_test  <- read.table(paste(directory,"/Test/Y_test.txt", sep = ""))
subject_test  <- read.table(paste(directory,"/Test/subject_test.txt", sep = ""))

#read list of variable and activity names
features  <-read.table(paste(directory,"/features.txt", sep = ""))
activities<- read.table(paste(directory,"/activity_labels.txt", sep = ""))

#combine data sets
TestDF<- data.frame(subject_test, Y_test, X_test)  
TrainDF<- data.frame(subject_train, Y_train, X_train)  
CompData <- rbind(TestDF, TrainDF)

# search features for "mean" and "standard deviation"
FiltVal <- grep(".mean.|.std.", features$V2)
FiltSet <- CompData[,c(1,2,FiltVal+2)]

# match activity numbers with descriptive names in activity_names.txt
activities[,2] <-sapply(activities[,2],as.character)
for (n in 1:nrow(activities)){
  FiltSet[grep(n,FiltSet$V1.1),"V1.1"] <- activities[match(n,activities$V1),2]
  }

# change variable names in Dataset with something descriptive
#Change t to Time, F to Freq, Remove special Characters, All Lower Case

names<- as.character(features[FiltVal,2])
names<- gsub("^t","time.",names)
names<- gsub("^f","freq.",names)
names<- gsub("-",".",names)
names<- gsub("()","",names)

colnames(FiltSet)<-c("subject","activity", names )



# tidy the data set - get rid of duplicate subject/activity pairs
library(dplyr)

Group <- group_by(FiltSet,subject, activity)
tidy <- summarize_all(Group,funs(mean))
NewFeatures <- names(tidy)

write.table(tidy, file = paste(directory,"/Submission/New_tidy_data.txt",sep = ""), row.names = FALSE)
write.table(NewFeatures, file = paste(directory,"/Submission/New_features.txt",sep = ""))

}
