# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  return (paste("The difference in lengths is", abs(length(v1) - length(v2))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2), c(1,2,3,4,5))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  n <- length(v1) - length(v2)
  if (n > 0)
    return (paste("Your first vector is longer by", n, "elements"))
  else
    return (paste("Your second vector is longer by", -n, "elements"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2), c(1,2,3,4,5))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  if (length(v1) - length(v2) > 0)
    return (v1)
  else
    return (v2)
}