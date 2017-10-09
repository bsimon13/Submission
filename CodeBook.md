Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc.XYZ and tGyro.XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc.XYZ and tGravityAcc.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk.XYZ and timeBodyGyroJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freqBodyAcc.XYZ, freqBodyAccJerk.XYZ, freqBodyGyro.XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAcc.XYZ
timeGravityAcc.XYZ
timeBodyAccJerk.XYZ
timeBodyGyro.XYZ
timeBodyGyroJerk.XYZ
timeBodyAccMag
timeGravityAccMag
timeBodyAccJerkMag
timeBodyGyroMag
timeBodyGyroJerkMag
freqBodyAcc.XYZ
freqBodyAccJerk.XYZ
freqBodyGyro.XYZ
freqBodyAccMag
freqBodyAccJerkMag
freqBodyGyroMag
freqBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Subject - Each participant in the study is given a number 1-30
Activity - Description of the activity they were doing at the time of the measurement

The complete list of variables is below:
=========================================


"1" "subject"  
"2" "activity"  
"3" "time.BodyAcc.mean().X"  
"4" "time.BodyAcc.mean().Y"  
"5" "time.BodyAcc.mean().Z"  
"6" "time.BodyAcc.std().X"  
"7" "time.BodyAcc.std().Y"  
"8" "time.BodyAcc.std().Z"  
"9" "time.GravityAcc.mean().X"  
"10" "time.GravityAcc.mean().Y"  
"11" "time.GravityAcc.mean().Z"  
"12" "time.GravityAcc.std().X"  
"13" "time.GravityAcc.std().Y"  
"14" "time.GravityAcc.std().Z"  
"15" "time.BodyAccJerk.mean().X"  
"16" "time.BodyAccJerk.mean().Y"  
"17" "time.BodyAccJerk.mean().Z"  
"18" "time.BodyAccJerk.std().X"  
"19" "time.BodyAccJerk.std().Y"  
"20" "time.BodyAccJerk.std().Z"  
"21" "time.BodyGyro.mean().X"  
"22" "time.BodyGyro.mean().Y"  
"23" "time.BodyGyro.mean().Z"  
"24" "time.BodyGyro.std().X"  
"25" "time.BodyGyro.std().Y"  
"26" "time.BodyGyro.std().Z"  
"27" "time.BodyGyroJerk.mean().X"  
"28" "time.BodyGyroJerk.mean().Y"  
"29" "time.BodyGyroJerk.mean().Z"  
"30" "time.BodyGyroJerk.std().X"  
"31" "time.BodyGyroJerk.std().Y"  
"32" "time.BodyGyroJerk.std().Z"  
"33" "time.BodyAccMag.mean()"  
"34" "time.BodyAccMag.std()"  
"35" "time.GravityAccMag.mean()"  
"36" "time.GravityAccMag.std()"  
"37" "time.BodyAccJerkMag.mean()"  
"38" "time.BodyAccJerkMag.std()"  
"39" "time.BodyGyroMag.mean()"  
"40" "time.BodyGyroMag.std()"  
"41" "time.BodyGyroJerkMag.mean()"  
"42" "time.BodyGyroJerkMag.std()"  
"43" "freq.BodyAcc.mean().X"  
"44" "freq.BodyAcc.mean().Y"  
"45" "freq.BodyAcc.mean().Z"  
"46" "freq.BodyAcc.std().X"  
"47" "freq.BodyAcc.std().Y"  
"48" "freq.BodyAcc.std().Z"  
"49" "freq.BodyAcc.meanFreq().X"  
"50" "freq.BodyAcc.meanFreq().Y"  
"51" "freq.BodyAcc.meanFreq().Z"  
"52" "freq.BodyAccJerk.mean().X"  
"53" "freq.BodyAccJerk.mean().Y"  
"54" "freq.BodyAccJerk.mean().Z"  
"55" "freq.BodyAccJerk.std().X"  
"56" "freq.BodyAccJerk.std().Y"  
"57" "freq.BodyAccJerk.std().Z"  
"58" "freq.BodyAccJerk.meanFreq().X"  
"59" "freq.BodyAccJerk.meanFreq().Y"  
"60" "freq.BodyAccJerk.meanFreq().Z"  
"61" "freq.BodyGyro.mean().X"  
"62" "freq.BodyGyro.mean().Y"  
"63" "freq.BodyGyro.mean().Z"  
"64" "freq.BodyGyro.std().X"  
"65" "freq.BodyGyro.std().Y"  
"66" "freq.BodyGyro.std().Z"  
"67" "freq.BodyGyro.meanFreq().X"  
"68" "freq.BodyGyro.meanFreq().Y"  
"69" "freq.BodyGyro.meanFreq().Z"  
"70" "freq.BodyAccMag.mean()"  
"71" "freq.BodyAccMag.std()"  
"72" "freq.BodyAccMag.meanFreq()"  
"73" "freq.BodyBodyAccJerkMag.mean()"  
"74" "freq.BodyBodyAccJerkMag.std()"  
"75" "freq.BodyBodyAccJerkMag.meanFreq()"  
"76" "freq.BodyBodyGyroMag.mean()"  
"77" "freq.BodyBodyGyroMag.std()"  
"78" "freq.BodyBodyGyroMag.meanFreq()"  
"79" "freq.BodyBodyGyroJerkMag.mean()"  
"80" "freq.BodyBodyGyroJerkMag.std()  "  
"81" "freq.BodyBodyGyroJerkMag.meanFreq()"  

