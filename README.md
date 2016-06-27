==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

The run_analysis.R script reads data from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" and produces a new - tidy - dataset which may be used for further analysis.

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

==================================================================

The original dataset included the following data files:

=======================================================
- 'features.txt': List of all features.
- 'activity_labels.txt': List of class labels and their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': ID's of subjects in the training data
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': ID's of subjects in the training data


A brief description of the script:
==================================
- Download UCI HAR Dataset data in the directory where the run_analysis.R script receides.
- Unzip the UCI HAR Dataset data which extracts data into UCI HAR Dataset directory.
- The run_analysis.R script merges data from a number of .txt files and produces a tidy data set which may be used for further analysis.
- First it checks to see if the required "reshape2" has been installed and then loads the "reshape2" package.


Outputs produced
==================================
* Tidy dataset file `DatasetHumanActivityRecognitionUsingSmartphones.txt` (tab-delimited text)
* Codebook file `codebook.md` (Markdown)
