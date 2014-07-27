--------------------------------------------------------------
README
--------------------------------------------------------------
The run_analysis.R script consists of 5 R functions to
address projects instructions and tidyset dataset 
transformations. 

The script utilizes the libraries: 

library(sqldf) - To be able to use Structure Query Language (SQL)
to query data frames. Only used to read in necessary .txt files 
in getdata_projectfiles_UCI HAR Dataset.zip.          

library(reshape2) - To use melt and cast functions to group
data and apply calculations on them.                 


run_analysis <- function() {

    ##The following functions are responsable for all dataset transformations.    
  
   
    ##Read, bind and merge training/test data from zip archive file into one dataset.
    ##Contains all measurement variables including identifier variables for
    ##subject participants and activity ID.   
    dataset <- mergeTrainingWithTestData()
    
    ##Extract (or subset) dataset with only mean() and standard deviation std() measurement related variables.
    
    dataset <- getMeasurementsOfInterest()
    
    ##Read, bind and set the correct activityNames using the datasets activityID as a link.   
    
    dataset <- insertActivityNames()
   
    ##Modify variable names to make them more understandable and usable.     
    
    dataset <- modifyVariableNames()  
    
    ##Create a independent tidy data set with the average of each 
    ##variable for each activity and each subject.              
    
    dataset <- createTidyDataSet()   


}

For more indepth detailed undertanding of script and functions
please check code comments.     



