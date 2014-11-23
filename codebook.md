The tidy data set produced by run_analysis.R is 180 rows * 88 variables, consisting
of the mean of 86 variables over (6 activities and 30 subjects). 

The variable names are transformed versions of those used in the original dataset
using the following rules:
* remove '(' and ')'
* replace '-' by '.'
* replace ',' by '_'

The values of the variables are the mean of the original variables grouped by
activity and subject.

column | description
-------- | -----------
activity.name | the activity name
subject.id | the subject identifier
tBodyAcc.[mean\|std].XYZ | mean by (activity, subject) of tBodyAcc-[mean()\|std()]-XYZ
tGravityAcc.[mean\|std].XYZ | mean by (activity, subject) of tGravityAcc-[mean()\|std()]-XYZ
tBodyAccJerk.[mean\|std].XYZ | mean by (activity, subject) of tBodyAccJerk-[mean()\|std()]-XYZ
tBodyGyro.[mean\|std].XYZ | mean by (activity, subject) of tBodyGyro-[mean()\|std()]-XYZ
tBodyGyroJerk.[mean\|std].XYZ | mean by (activity, subject) of tBodyGyroJerk-[mean()\|std()]-XYZ
tBodyAccMag.[mean\|std] | mean by (activity, subject) of tBodyAccMag-[mean()\|std()]
tGravityAccMag.[mean\|std] | mean by (activity, subject) of tGravityAccMag-[mean()\|std()]
tBodyAccJerkMag.[mean\|std] | mean by (activity, subject) of tBodyAccJerkMag-[mean()\|std()]
tBodyGyroMag.[mean\|std] | mean by (activity, subject) of tBodyGyroMag-[mean()\|std()]
tBodyGyroJerkMag.[mean\|std] | mean by (activity, subject) of tBodyGyroJerkMag-[mean()\|std()]
fBodyAcc.[mean\|std].XYZ | mean by (activity, subject) of fBodyAcc-[mean()\|std()]-XYZ
fBodyAcc.meanFreq.mean.XYZ | mean by (activity, subject) of fBodyAcc.meanFreq-[mean()\|std()]
fBodyAccJerk.[mean\|std].XYZ | mean by (activity, subject) of fBodyAccJerk-[mean()\|std()]-XYZ
fBodyGyro.[mean\|std].XYZ | mean by (activity, subject) of fBodyGyro-[mean()\|std()]-XYZ
fBodyAccMag.[mean\|std] | mean by (activity, subject) of fBodyAccMag-[mean()\|std()]
fBodyAccJerkMag.[mean\|std} | mean by (activity, subject) of fBodyAccJerkMag-[mean()\|std()]
fBodyGyroMag.[mean\|std} | mean by (activity, subject) of fBodyGyroMag-[mean()\|std()]
fBodyGyroJerkMag.[mean\|std] | mean by (activity, subject) of fBodyGyroJerkMag-[mean()\|std()]

