library(sqldf)
library(reshape2)

run_analysis <- function() {
    
    ## Working directory plus file name where data set files are located.
    zipFile <- paste(getwd(),"/getdata_projectfiles_UCI HAR Dataset.zip",sep="")

    
    ## Address on web where data set is located.
    fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    ## If data set file doesn't exists in working directory then download it.  
    if (!file.exists(zipFile)) {
        
        
        download.file(FileURL,destfile=zipFile)
        
        
    }
    
    ## Get all files directories/subdirectories plus file names from zip archive. 
    filesList <- unzip(zipFile,list=TRUE) 
    
    ## Where SQL statement to locate files of interest.   
    where = " WHERE name LIKE '%/features.txt%' OR name LIKE '%/X_test.txt%' 
    OR name LIKE '%/y_test.txt%' OR name LIKE '%/X_train.txt%' 
    OR name LIKE '%/y_train.txt%' OR name LIKE '%/subject_train.txt%'
    OR name LIKE '%/subject_test.txt%' OR name LIKE '%/activity_labels.txt%'"
    
    ## SQL query with where statement to locate files of interest from data frame.   
    query <- paste("SELECT name FROM filesList ",where,sep="")
    
    ## Get files directories/subdirectories plus file names of interest from data frame.
    filesList <- sqldf(query)
    
    ##The following functions are responsable for all dataset transformations.     
    ##Read, bind and merge training/test data from zip archive file into one dataset.
    ##Contains all measurement variables including identifier variables for
    ##subject participants and activity ID.   
    dataset <- mergeTrainingWithTestData(filesList,zipFile)
    
    ##Extract (or subset) dataset with only mean() and standard deviation std() measurement related variables.
    dataset <- getMeasurementsOfInterest(dataset)
    
    ##Read, bind and set the correct activityNames using the datasets activityID as a link.   
    dataset <- insertActivityNames(filesList,dataset,zipFile)
   
    ##Modify variable names to make them more understandable and usable.     
    dataset <- modifyVariableNames(dataset)  
    
    ##Create a independent tidy data set with the average of each 
    ##variable for each activity and each subject.              
    dataset <- createTidyDataSet(dataset)    
    
    
    
} 

## Merges the training and the test sets to create one dataset (563 cols,10299 rows).
mergeTrainingWithTestData <- function(filesList=data.frame(),zipFile=character) {
    ## Read in training data from 'X_train.txt' file in zip.  
    trainData <- read.table(unz(zipFile,filesList[7,]))
    ## Read in activity ID data from 'y_train.txt' file in zip.
    trainActID <- read.table(unz(zipFile,filesList[8,]))
    ## Bind training activity data to training measurement data.      
    trainData <- cbind(trainActID,trainData)
    colnames(trainData)[1] <- "V0A"
    
    ## Read in training subject data from 'subject_train.txt' file in zip.   
    trainSubject <- read.table(unz(zipFile,filesList[6,]))
    trainSubject <- sprintf("%02d",trainSubject[,1])
    ## Bind training subject data to training measurements data.    
    trainData <- cbind(trainData,trainSubject)
    colnames(trainData)[563] <- "V0Z"
    
    ## Read in test data from 'X_test.txt' file in zip. 
    testData <- read.table(unz(zipFile,filesList[4,]))
    ## Read in activity ID data from 'y_test.txt' file in zip.
    testActID <- read.table(unz(zipFile,filesList[5,]))
    ## Bind test activity data to test measurements data.  
    testData <- cbind(testActID,testData)
    colnames(testData)[1] <- "V0A"
    
    ## Read in test subject data from 'subject_test.txt' file in zip.
    testSubject <- read.table(unz(zipFile,filesList[3,]))
    testSubject <- sprintf("%02d",testSubject[,1])
    ## Bind test subject data to test measurements data.
    testData <- cbind(testData,testSubject)
    colnames(testData)[563] <- "V0Z"
    
    ## Bind testdata with trainig data to create one dataset.
    dataset <- rbind(testData,trainData)
    
    ## Read in measurement column names data from 'features.txt' file in zip. 
    featuresList <- read.table(unz(zipFile,filesList[2,]))
    ##Rename dataset columns.   
    varNames <- c("activityID",as.character(featuresList[,2]),"subjectID") 
    colnames(dataset) <- varNames
    
    dataset
    
}

getMeasurementsOfInterest <- function(dataset=data.frame()) {
    ##Search dataset for columns names of interest, includes measurements
    ##containig key phrases mean() and std(). Once column names of interest
    ##found subset dataset (68 cols, 10299 rows).               
    dataset <- dataset[,grep("activityID|mean\\(\\)|std\\(\\)|subjectID",colnames(dataset))]
    
    
}    

insertActivityNames <- function(filesList=data.frame(),dataset=data.frame(),zipFile=character) {
    
    ##Read in activityNames data from 'activity_labels.txt' file in zip.
    activity <- read.table(unz(zipFile,filesList[1,]))
    
    ## Create activityName column in dataset. 
    dataset$activityName <- NA
    
    ## Set activityNames correctly to dataset using activityID column.    
    for (i in activity[,1]) {
        
        actRow <- dataset[,1] == i
        dataset[actRow,69] <- as.character(activity[i,2])
        
    }
    ## Reorder dataset. First 3 values correspond to subjectID, activityID
    ## and activityName. The rest correspond to measurements of interest.         
    dataset[,c(68,1,69,2:67)]
    
}  

modifyVariableNames <- function(dataset=data.frame()) {
    ##Find and replace characters in datasets measurement variable names
    ##to make more understandable.        
    prefix <- regexpr("t",names(dataset))== 1
    names(dataset)[prefix] <- sub("t","time",names(dataset))[prefix]
    
    prefix <- regexpr("f",names(dataset))== 1
    names(dataset)[prefix] <- sub("f","freq",names(dataset))[prefix]
    
    ##Replace characters in datasets measurement variable names
    ##to make more understandable and usable.
    names(dataset) <- gsub("mean","Mean",names(dataset))
    names(dataset) <- gsub("std","Std",names(dataset))
    names(dataset) <- gsub("\\-|\\()","",names(dataset))
    names(dataset) <- gsub("BodyBody","Body",names(dataset))
    
    dataset
} 

createTidyDataSet <- function(dataset=data.frame()) {
    
    ##Indicate identifier variables and measurement value variables.     
    dataMelt <- melt(dataset,id=c("subjectID","activityID","activityName"),neasure.vars=c(4:69))
    ##Cluster by identifier variables and calculate the mean for each measurement
    ##variable. (69 cols,180 rows)            
    dataCast <- dcast(dataMelt, subjectID + activityID + activityName ~ variable, mean) 
    ##Reorder dataset rows by subject then by activityID.  
    dataset <- dataCast[order(as.character(dataCast$subjectID),as.character(dataCast$activityID)),]
    ##Write dataset into tidyset.txt file.      
    write.table(dataset, file = "tidyset.txt", row.names=FALSE, sep = ",")
    
    
}