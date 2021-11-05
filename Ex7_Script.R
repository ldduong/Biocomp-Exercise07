#Biocomp Exercise 7, Loan Duong
#
#1. R code to replicate head functionality of bash. 
#
#Usage: file_head("FileName", "NumLines")
#
file_head <- function(filename, num_lines){
writeLines(readLines(file(filename), num_lines))
}