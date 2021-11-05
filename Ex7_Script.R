#Biocomp Exercise 7, Loan Duong
#
#1. R code to replicate head functionality of bash. 
#
#Usage: file_head("FileName", "NumLines")
#
file_head <- function(filename, num_lines){
writeLines(readLines(file(filename), num_lines))
}
#
#Example
file_head("TestFile.txt",2)
#
#2. Load iris.csv
data=read.table(file="iris.csv", header=TRUE,sep=",", stringsAsFactors = FALSE)
#print the last 2 rows in the last two columns to the terminal 
data[149:150,4:5]
#get the number of observations for each species in the dataset
nrow(data)
#get rows with Sepal.Width >3.5
data[data$Sepal.Width>3.5,]
#write the data for the species setosa to setosa.csv
write.csv(data[data$Species=='setosa',],'setosa.csv', row.names=TRUE)
#calculate the mean, min, and max of petal length for observations from virginica
virginica<-data[data$Species=='virginica',]
Mean<-mean(virginica$Petal.Length)
Min<-min(virginica$Petal.Length)
Max<-max(virginica$Petal.Length)
vir_sepW <- c(Mean,Min,Max)
summary<-data.frame(x = c('Mean','Minimum','Maximum'), y = vir_sepW)
summary
#
#
#
#
#