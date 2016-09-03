# Getting-and-Cleaning-data-project
The "run_analysis.R" file assumes that the data is in the working directory inside a folder named "UCIHAR". The R file reads the data, cleans the data as mentioned in the problem statement and writes an output text file named "finaltidydata" containing the tidy data in the same directory.

The code operates in the following steps 

1. Reads the test data from "x_test.txt", "y_test.txt" and "subject_test.txt" using read.table()
2. It also reads the "features.txt" and assigns the column headers of the x_data accordingly
3. It updates the column headers of "y_test" and "subject_test" to "activity_id" and "subject_id" respectively
4. Finally it combines all the columns of "x_test", "y_test" and "subject_test" into a data frame
5. The above steps are repeated for the train data sets
6. The test and train data are combined by rows using the rbind() function
7. The columns names containing the "mean" or "std" are extracted from the merged data set into "mean_std_data" data frame
  * The columns names containing "meanFreq" are not extracted as they do not represent the mean of the variables of interest
8. The activity_id numbers are replaced with the activity names corresponding to the "activity_labels.txt"
9. The names of some of the columns are modified to look descriptive
10. The mean data based on the subject and activity for all the data is obtained using aggregate
