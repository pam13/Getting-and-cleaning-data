---
title: "codebook"

---
Variables

today = today's date, later coerced to data and time
mySystem = description of computer hardware and software used in this analysis
dataDescription = source project description from UCI Machine Learning Repository
dataUrl = URL for zip archive of source data
Variables: Imported files named according to sources file names

activity_labels = six activity codes and corresponding activity names
features = feature names for X_test, X_train

test = test set subject number, 1-30
X_test = test set feature measurements
y_test = test set activity, coded 1-6

train = train set subject number, 1-30
X_train = train set feature measurements
y_train = train set activity, coded 1-6
Variables: Combined data sets

test = subject_test, y_test, X_test combined, by columns
train = subject_train, y_train, X_train combined, by columns
total = test, train, combined by rows
Variables: Column names

tidyDataset = data set with average of each variable, by activity, by subject