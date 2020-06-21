# Getting-and-cleaning-data

 Description

The project uses data from the UCI Machine Learning Repository: Human Activity Recognition and Smart Phone Data site.

The R script run_analysis.R reads the data files and combines them into one full data file. Important variable values are renamed from numbers to meaningful names. The full set of variables is reduced to a subset that involve means and standard deviations. 

The data is then grouped by subject and activity, and summarized by each variable's mean. The end result is a tidy data set tidyDataset.txt.

