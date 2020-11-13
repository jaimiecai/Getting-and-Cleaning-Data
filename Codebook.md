CodeBook

This data was downloaded from the UCI Machine Learning Repository (found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Specifically, the entire data can be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiment was carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually.

The original dataset randomly partitioned the data into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. This code combines the training and test data into one tidy set and removes all data that is not either a mean or standard deviation. 


subject

    identifies the study participant; possible 1:30 (extracted from the files original subject_train/test data

activity

    indicates the activity the subject was completing; one of six options: walking, walking_upstairs, walking_downstairs, sitting, standing, laying. This data was originally stored as a number and was converted to a character vector describing the activity 

<em>The following data was obtained for each subject/activity from the Samsung Galaxy SII being worn by the subject on their waste while completing the activity. The activity included in this data set is only the mean and standard deviation for each of the original 561 measurements. After removing data not related to means or standard deviations the following 86 measurements remained. To make the column headings more descriptive the t was changed to time; f to frequency; Acc to Acceleometer; and Gyro to Gyroscope. </em>

time Body Accelerometer-mean()-X

time Body Accelerometer-mean()-Y

time Body Accelerometer-mean()-Z

time Gravity Accelerometer-mean()-X

time Gravity Accelerometer-mean()-Y

time Gravity Accelerometer-mean()-Z

time Body AccelerometerJerk-mean()-X

time Body AccelerometerJerk-mean()-Y

time Body AccelerometerJerk-mean()-Z

time Body Gyroscope-mean()-X

time Body Gyroscope-mean()-Y

time Body Gyroscope-mean()-Z

time Body GyroscopeJerk-mean()-X

time Body GyroscopeJerk-mean()-Y

time Body GyroscopeJerk-mean()-Z

time Body AccelerometerMag-mean()

time Gravity AccelerometerMag-mean()

time Body AccelerometerJerkMag-mean()

time Body GyroscopeMag-mean()

time Body GyroscopeJerkMag-mean()

frequency Body Accelerometer-mean()-X

frequency Body Accelerometer-mean()-Y

frequency Body Accelerometer-mean()-Z

frequency Body Accelerometer-meanFreq()-X

frequency Body Accelerometer-meanFreq()-Y

frequency Body Accelerometer-meanFreq()-Z

frequency Body AccelerometerJerk-mean()-X

frequency Body AccelerometerJerk-mean()-Y

frequency Body AccelerometerJerk-mean()-Z

frequency Body AccelerometerJerk-meanFreq()-X

frequency Body AccelerometerJerk-meanFreq()-Y

frequency Body AccelerometerJerk-meanFreq()-Z

frequency Body Gyroscope-mean()-X

frequency Body Gyroscope-mean()-Y

frequency Body Gyroscope-mean()-Z

frequency Body Gyroscope-meanFreq()-X

frequency Body Gyroscope-meanFreq()-Y

frequency Body Gyroscope-meanFreq()-Z

frequency Body AccelerometerMag-mean()

frequency Body AccelerometerMag-meanFreq()

frequency BodyBody AccelerometerJerkMag-mean()

frequency BodyBody AccelerometerJerkMag-meanFreq()

frequency BodyBody GyroscopeMag-mean()

frequency BodyBody GyroscopeMag-meanFreq()

frequency BodyBody GyroscopeJerkMag-mean()

frequency BodyBody GyroscopeJerkMag-meanFreq()

angle(tBody AccelerometerMean,gravity)

angle(tBody AccelerometerJerkMean),gravityMean)

angle(tBody GyroscopeMean,gravityMean)

angle(tBody GyroscopeJerkMean,gravityMean)

angle(X,gravityMean)

angle(Y,gravityMean)

angle(Z,gravityMean)

time Body Accelerometer-std()-X

time Body Accelerometer-std()-Y

time Body Accelerometer-std()-Z

time Gravity Accelerometer-std()-X

time Gravity Accelerometer-std()-Y

time Gravity Accelerometer-std()-Z

time Body AccelerometerJerk-std()-X

time Body AccelerometerJerk-std()-Y

time Body AccelerometerJerk-std()-Z

time Body Gyroscope-std()-X

time Body Gyroscope-std()-Y

time Body Gyroscope-std()-Z

time Body GyroscopeJerk-std()-X

time Body GyroscopeJerk-std()-Y

time Body GyroscopeJerk-std()-Z

time Body AccelerometerMag-std()

time Gravity AccelerometerMag-std()

time Body AccelerometerJerkMag-std()

time Body GyroscopeMag-std()

time Body GyroscopeJerkMag-std()

frequency Body Accelerometer-std()-X

frequency Body Accelerometer-std()-Y

frequency Body Accelerometer-std()-Z

frequency Body AccelerometerJerk-std()-X

frequency Body AccelerometerJerk-std()-Y

frequency Body AccelerometerJerk-std()-Z

frequency Body Gyroscope-std()-X


frequency Body Gyroscope-std()-Y

frequency Body Gyroscope-std()-Z

frequency Body AccelerometerMag-std()

frequency BodyBody AccelerometerJerkMag-std()

frequency BodyBody GyroscopeMag-std()

frequency BodyBody GyroscopeJerkMag-std()
