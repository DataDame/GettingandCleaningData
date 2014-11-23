# Codebook
Suma Krishnaprasad  
November 22, 2014  


## ===================================================      
## Human Activity Recognition Using Smartphones Dataset      
## ===================================================   

The Files provided by the Human Activity Recognition project by UCI was used for this analysis.
Refer to [UCI MLR Human Recognition](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for more information about the data provided and the data set

After performing the require data loading, merging and cleaning the output of this analysis consists of 180 observations of 88 variables of human activity.  

The test and train data was loaded, merged and only the mean and standard deviation measurements were extracted.  
The average of the mean and standard deviation for each subject and activity were computed.  
The Measurements were assigned descriptive names based on the names in features.txt file.     
Refer to features_info.txt for description of what each of these columns mean.  
"-", "()" and "," were removed from the names and 't' was replaced with Time and "f" with Frequency and "std" with "StdDev" to make it clearer. The resulting variables are as follows -   

1   Subject  
2   Activity  
3	  TimeBodyAccMeanX  
4	  TimeBodyAccMeanY  
5	  TimeBodyAccMeanZ  
6	  TimeBodyAccStdDevX  
7	  TimeBodyAccStdDevY  
8	  TimeBodyAccStdDevZ  
9	  TimeGravityAccMeanX  
10	TimeGravityAccMeanY  
11	TimeGravityAccMeanZ  
12	TimeGravityAccStdDevX  
13	TimeGravityAccStdDevY  
14	TimeGravityAccStdDevZ  
15	TimeBodyAccJerkMeanX  
16	TimeBodyAccJerkMeanY  
17	TimeBodyAccJerkMeanZ  
18	TimeBodyAccJerkStdDevX  
19	TimeBodyAccJerkStdDevY  
20	TimeBodyAccJerkStdDevZ  
21	TimeBodyGyroMeanX  
22	TimeBodyGyroMeanY  
23	TimeBodyGyroMeanZ  
24	TimeBodyGyroStdDevX  
25	TimeBodyGyroStdDevY  
26	TimeBodyGyroStdDevZ  
27	TimeBodyGyroJerkMeanX  
28	TimeBodyGyroJerkMeanY  
29	TimeBodyGyroJerkMeanZ  
30	TimeBodyGyroJerkStdDevX  
31	TimeBodyGyroJerkStdDevY  
32	TimeBodyGyroJerkStdDevZ  
33	TimeBodyAccMagMean  
34	TimeBodyAccMagStdDev  
35	TimeGravityAccMagMean  
36	TimeGravityAccMagStdDev  
37	TimeBodyAccJerkMagMean  
38	TimeBodyAccJerkMagStdDev  
39	TimeBodyGyroMagMean  
40	TimeBodyGyroMagStdDev  
41	TimeBodyGyroJerkMagMean  
42	TimeBodyGyroJerkMagStdDev  
43	FrequencyBodyAccMeanX  
44	FrequencyBodyAccMeanY  
45	FrequencyBodyAccMeanZ  
46	FrequencyBodyAccStdDevX  
47	FrequencyBodyAccStdDevY  
48	FrequencyBodyAccStdDevZ  
49	FrequencyBodyAccMeanFreqX  
50	FrequencyBodyAccMeanFreqY  
51	FrequencyBodyAccMeanFreqZ  
52	FrequencyBodyAccJerkMeanX  
53	FrequencyBodyAccJerkMeanY  
54	FrequencyBodyAccJerkMeanZ  
55	FrequencyBodyAccJerkStdDevX  
56	FrequencyBodyAccJerkStdDevY  
57	FrequencyBodyAccJerkStdDevZ  
58	FrequencyBodyAccJerkMeanFreqX  
59	FrequencyBodyAccJerkMeanFreqY  
60	FrequencyBodyAccJerkMeanFreqZ  
61	FrequencyBodyGyroMeanX  
62	FrequencyBodyGyroMeanY  
63	FrequencyBodyGyroMeanZ  
64	FrequencyBodyGyroStdDevX  
65	FrequencyBodyGyroStdDevY  
66	FrequencyBodyGyroStdDevZ  
67	FrequencyBodyGyroMeanFreqX  
68	FrequencyBodyGyroMeanFreqY  
69	FrequencyBodyGyroMeanFreqZ  
70	FrequencyBodyAccMagMean  
71	FrequencyBodyAccMagStdDev  
72	FrequencyBodyAccMagMeanFreq  
73	FrequencyBodyAccJerkMagMean  
74	FrequencyBodyAccJerkMagStdDev  
75	FrequencyBodyAccJerkMagMeanFreq  
76	FrequencyBodyGyroMagMean  
77	FrequencyBodyGyroMagStdDev  
78	FrequencyBodyGyroMagMeanFreq  
79	FrequencyBodyGyroJerkMagMean  
80	FrequencyBodyGyroJerkMagStdDev  
81	FrequencyBodyGyroJerkMagMeanFreq  
82	angletBodyAccMeangravity  
83	angletBodyAccJerkMeangravityMean  
84	angletBodyGyroMeangravityMean  
85	angletBodyGyroJerkMeangravityMean  
86	angleXgravityMean  
87	angleYgravityMean  
88	angleZgravityMean   
