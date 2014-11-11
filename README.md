load data into R
load:x-train
load y_train to identify subject
load activity to identify activity
load feature, and used as a column name
merge data (train and test), using cbind (careful the order !)
set merged data column name (column 1 and column 2)


load test data, merged and set column name as mentioned above

combine train and test data (using rbind) (be careful the column order first !)

write the total data to file (just for evaluation, not for final submit)

extract only column name having mean or std from total data:
using grep function to select
then we have total.data.sel, which is the data only include mean and std columns

then we label the activity type
originally this column labeled with number 1 to 6, we transformed it into clear name such as walking, walking upstairs etc.
created a character vector including activity names
transfer from number to character names using factor function

then we need to calculated the total mean according to the subject and what kind of activity
load data.table library, 
made the data into data.table 
using lapply function
using .SD to indicate all columns
and order by activity type and subjects

because the subject is ordered from 1 to 30, 
we order the table with order function

finally, write data into txt.file and csv file.





