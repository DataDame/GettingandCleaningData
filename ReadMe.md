# ReadMe
Suma Krishnaprasad  
November 22, 2014  

## ===================================================      
## Human Activity Recognition Using Smartphones Dataset       
## ===================================================  

The Files provided by the Human Activity Recognition project by UCI was used for this analysis.
Refer to [UCI MLR Human Recognition](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
for more information about the data provided and the data set

The attached run_analysis.R R script performs the following sequence of actions -

Step 1: Sets the working directory to the directory where the files were downloaded to  
Step 2: Loads the test files - subject_test.txt, y_test.txt, X_test.txt  
Step 3: Combines the test Subjects, Activity and Measurements to one data frame  
Step 4: Loads the training files - subject_train.txt, y_train.txt, X_train.txt  
Step 5: Combines the training Subjects, Activity and Measurements to another data frame  
Step 6: Merges the test and train data set into a single data set  
Step 7: Loads the Features.txt file to get the Measurement names  
Step 8: Cleans up the Measurements names and substitutes abreviations to provide more descriptive names  
Step 9: Identifies Measurements that compute only Mean and standard Deviation and subsets the data set  
Step 10: Aggregates the subset data to compute average of the Mean and Standard Deviation values by Subject and         Activity  

Finally it outputs the result dataset to an output text file - tidydataset.txt  

