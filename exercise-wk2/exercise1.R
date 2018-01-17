## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This does not work as all elements of a vector must be of the same type
# and it is also impossible to sum a number and a string

install.packages("stringr")

#library("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# This does not work as the function str_length could not be found. 
# The function could not be found as the "stringr" package had not been loaded, therefore it could not be used.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# This line does not work as the argument, initial, is a variable that does not exist. 
# This could be corrected by changing it to initials, which does exist.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

test.vector <- c(1, 2, 3)

typeof(test.vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector1, vector2){
  num <- length(vector1) - length(vector2)
  
  if(num < 0){
    num <- num * -1
  }
  
  return (paste("The difference in lengths is ", num))
}


# Pass two vectors of different length to your `CompareLength` function

v1 <- c(1:2)
v2 <- c(1:3)

CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vector1, vector2){
  num <- length(vector1) - length(vector2)
  
  if(num < 0){
    num <- num * -1
    return (paste("Your second vector is longer by", num, "elements"))
  }
  
  return (paste("Your first vector is longer by", num, "elements"))
}


# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


