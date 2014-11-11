inertial signal data: the original data obtained from smartphone
x_train.txt: a dataset include the mean, std, mad, max etc. calculated from original data(in inertial signal)

How we order these variables:
first: subject
second: the activity performed by subject
third: the mean of data
fourth: the standard deviation(STD) of data

in the final CSV or final txt file, variables include:

subjects: the number of people who using smartphone, from 1-30
activity.label: means the activity of receiving signal, include: standing, sitting, laying, walking, walking down, walking upstair
tBodyAcc-mean-x: mean of the total body acceleration, X-axis
tGravityAcc-mean-x: mean of the total gravity acceleration, X-axis
tBodyAccjerk-mean-x: mean of the total body acceleration, jerk signals, X-axis
tBodyGyro-mean-X: mean of the total body gyroscope, X-axis
tBodyGyroJerk-mean-x: mean of the total body gyroscope jerk signal, X-axis
tBodyAccMag-Mean: mean of total body acceleration, calculated magnitude.
tGravityAccMag-mean: mean of the total gravity acceleration, calculated magnitude
tBodyAccJerkMag-mean: mean of the total body acceleration, Jerk signal, calculated magnitude
tBodyGyroMag-mean: mean of total body gyroscope, calculated magnitude
tBodyGyroJerkMag-mean: mean of the total body gyroscope, jerk signal, calculated magnitude
fBodyAcc-mean-x: mean of the body acceleration, applied with Fast Fourier Transform, X-axis
fBodyAcc-meanFreq-x: body acceleration, applied with Fast Fourier Transform, then using Weighted average of the frequency components to obtain a mean frequency, X-axis
fBodyAccJerk-mean-x: mean of body acceleration jerk signal, applied with Fast Fourier Transform, X-axis
fBodyAccJerk-meanFreq-x: body acceleration jerk signal, applied with Fast Fourier Transform, using Weighted average of the frequency components to obtain a mean frequency, X axis.
fBodyGyro-mean-X: mean of body gyroscope, applied with Fast Fourier Transform, X-axis.
fBodyGyro-menFreq-x: body gyroscope, applied with Fast Fourier Transform, using Weighted average of the frequency components to obtain a mean frequency, X-axis
fBodyAccMag-mean: mean of the body acceleration magnitude signal, applied with Fast Fourier Transform
fBodyAccMag-meanFreq: body acceleration magnitude signal, applied with Fast Fourier Transform, using Weighted average of the frequency components of obtain a mean frequency.
fBodyBodyAccJerkMag-mean: mean of the body acceleration jerk and magnitude signal, applied with Fast Fourier Transform.
fBodyBodyAccJerkMag-meanFreq: body acceleration magnitude and jerk signal, applied with Fast Fourier Transform, using Weighted average of the frequency components of obtain a mean frequency.
fBodyBOdyGyroMag-mean: mean of body gyroscope magnitude signal, applied with Fast Fourier Transform
fBodyBOdyGyroMag-meanFreq: body gyroscope magnitude signal, applied with Fast Fourier Transform, using Weighted average of the frequency components of obtain a mean frequency.
fBodyBodyGyroJerkMag-mean: mean of body gyroscope magnitude and jerk signal, applied with Fast Fourier Transform
fBodyBodyGyroJerkMag-meanFreq: body gyroscope magnitude and jerk signal, applied with Fast Fourier Transform, using Weighted average of the frequency components of obtain a mean frequency.


tBodyAcc-std-x: stander deviation of total body acceleration, x-axis


