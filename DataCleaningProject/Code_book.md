## This is a Description of all Tables/ Variables created in the scripts provided ##

###List of Tables ###

* train.table
A table contains all the train dataset: 
  1. Subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
  2. label: Links the class labels with their activity name. Range can be found in activity.labels below
  3. V1-V561 : A list of measurements . All measurements are described below
  
* test.table
A table contains all the Test dataset
  1. Subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
  2. label: Links the class labels with their activity name. Range can be found in activity.labels below
  3. V1-V561 : A list of measurements . All measurements are described below
  
* full.data
A table contains the full merge of the data of the two tables above

* features
A tables containing a list of all features available.
  1. Subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
  2. label: Links the class labels with their activity name. Range can be found in activity.labels below

  3.The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

* mean_std
A table containing a subset of only the mean and standard deviation of the full.Data
  1. Subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
  2. label: Links the class labels with their activity name. Range can be found in activity.labels below
  3. V1-V561 : A list of measurements . All measurements are described above
  
* activity.labels
A table that Links the class labels with their activity name.A range of 1-6 as follows:
V1 "1"       "2"                "3"                  "4"       "5"        "6"     
V2 "WALKING" "WALKING_UPSTAIRS" "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING"

* average.data
A table containing the Aggregation of the average according to the subject and activity of the full.data
  1. Subject: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
  2. label: Links the class labels with their activity name. Range can be found in activity.labels below

  3.The set of measurements that were estimatated. a full list of all measurements can be found in features.txt
  
  
Notes:

All Data has been taken from the zip file provided by :
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
