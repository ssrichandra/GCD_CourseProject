# Readme

Course Project - Getting &amp; Cleaning Data
v. 2015-07-26

This project demonstrates the collection, cleaning and manipulation of a dataset using the Tidy Data principles.

##Contents of the Repo
The repository contains the following files

###File 1: run_Analysis.R
This is the R source code that will download the HAR data file from the UCI repository and load the required tables.
The following steps were taken

1. Combining the Files

2. Melting the Dataset

3. Casting the data set, writing the Tidy.txt file

####1. Combining the files
The activity labels file provided the identifiers that would eventually populate the Activity Column, and similarly for the features provided the measurement variables names. These would be used in the Header fields for the measurements.
The Subject and Activity variables were appended as new columns to both the Train and Test tables.

The Train and Test tables were then combined using Row Binding (rbind)


####2. Melting the Dataset
The Activity and Subject columns were converted to factors (originally character and numeric) to enable summarization, and then used as the ID fields on running the "melt" procedure.
The melt procedure converted all the measurements to rows to enable quicker overall mean computing.


####3. Casting the data set, and writing the Tidy.Txt data file.
The data was then cast into a data frame (dcast), and then written in the table. 


###File 2: Tidy.txt
This is the final output which lists the average of each signal type, by subject and by activity.
Overall this table has 180 rows, of 81 measurements (Subject ID, Activity Description, and 79 signal measurement & std deviation verages)

###File 3: CodeBook.MD
This is a file which contains further details on the variables, measurements and data contained in the Tidy.txt file


