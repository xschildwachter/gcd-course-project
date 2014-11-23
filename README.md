Coursera - Getting & Cleaning Data course-project
=================================================

The script run_analysis.R assumes the working directory is the root of the
data set ('./UCI HAR Dataset').
It will:

1. Load the raw data by combining the subject data, the x data and the y data
for both the training and test sets, then combining both into a single dataframe.

2. Use the features data (after transformation to make them usable as coiumn names)
to name the variables.

3. From the data frame, extract the variables related to mean or standard
deviation into a filtered data frame.

4. Replace the activity ids by readable activity names.

5. From the filtered data frame, compute the new tidy dataset by taking the mean
of the variables over (activity, subject)

6. Save the resulting data frame to file.



