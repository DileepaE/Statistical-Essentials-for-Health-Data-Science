#
#Descriptive statistics
#

#Measures of Central Tendency-------
#mean, median, mode?
c(17, 18, 20, 21, 21, 24, 23, 21, 15, 19 )
c(17, 18, 23, 20, 21, 24, 23, 20, 20, 15, 19, 20)
c(17,18, 23, 20, 21, 24, 23, 20, 20, 15, 19, 20,90)

#Measures of Dispersion------
#standard deviation, interquartile range? 
c(17, 18, 20, 21, 21, 24, 23, 21, 15, 19 )
c(17, 18, 23, 20, 21, 24, 23, 20, 20, 15, 19, 20)
c(17,18, 23, 20, 21, 24, 23, 20, 20, 15, 19, 20,90)


#Task 1------------
#13, 15 18 19 20 20 20 21 23 23 24 24 25, 50
# Find mean and SD
# Determine the region of 2SD
# Find the median and IQR
# Are there any outliers?
# What is the best way to represent this distribution  
c(13, 15, 18, 19, 20, 20, 20, 21, 23, 23, 24, 24, 25, 50)


#data simulation--------
?rnorm
rnorm(20, 100,20)
hist(rnorm(20, 100,20))

#normal distribution--------
par(mfrow = c(2, 2))
hist(rnorm(100, 50,10))
hist(rnorm(1000, 50,10))
hist(rnorm(100000, 50,10))
hist(rnorm(10000000, 50,10))


#Standard normal distribution-------
par(mfrow = c(1, 2))
hist(rnorm(1000, 50,10))
hist(scale(rnorm(1000, 50,10)))

