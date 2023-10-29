#------------------

# Answer to the Question # 01

#------------------

# 1 of Q.1 

#a) 

# Taking a sample 

x1 <- rbinom(1, 20, 0.5)

x1


#b) 

#Finding the range for x1


n <- 20

p <- 0.5


# Find the minimum value

min_value <- min(0, n)

# Find the maximum value

max_value <- max(0:n)

# Calculate the cumulative probability at the minimum value

cdf_min <- pbinom(min_value, n, p)

# Calculate the cumulative probability at the maximum value

cdf_max <- pbinom(max_value, n, p)

# Range of the binomial distribution

range_binomial <- c(min_value, max_value)

range_binomial


#2 of Q.1

# Repeating Q.1 for N = 100000 times


N <- 100000

x <- rep(NA, N)

x

for (i in 1: N){
  x[i] <- rbinom(1, 20, 0.5)
}

x

# Plot the histogram

hist(x)

#Find the min and max value

max(x)

min(x)


#3 of Q.1 

# Now setting if x is bigger or less than 15 then y = 1 . And y = 0 otherwise.

y_1 <- ifelse(c(x)>=15, 1,0)
y_1



# 4 of Q.1

#Calculating summation of y


sum(y_1)




#5 of Q.1 


# Now repeating all the steps above for n = 20 and p =0.85


#a) 

# Taking a sample 

x1 <- rbinom(1, 20, 0.85)
x1


#b)

#Finding the range for x1

n <- 20

p <- 0.85

# Find the minimum value

min_value <- min(0, n)

# Find the maximum value

max_value <- max(0:n)

# Calculate the cumulative probability at the minimum value

cdf_min <- pbinom(min_value, n, p)

# Calculate the cumulative probability at the maximum value

cdf_max <- pbinom(max_value, n, p)

# Range of the binomial distribution

range_binomial <- c(min_value, max_value)

range_binomial


#c. 

# Now taking N = 100000 times

N <- 100000

x <- rep(NA, N)

x

for (i in 1: N){
  x[i] <- rbinom(1, 20, 0.85)
}

x

# Plot the histogram

hist(x)


#Find the min and max value

max(x)

min(x)


#d. 

# Now setting if x is bigger or less than 15 then y = 1 . And y = 0 otherwise

y_1 <- ifelse(c(x)>=15, 1,0)
y_1


#e. 

#Calculating summation of y

sum(y_1)


#f. 

#Calculating summation of y divided by N

sum(y_1) / N




# ---------------------------------------------

# Answer to the Question # 01 - (6) : 

# ---------------------------------------------


# Now I have to make a guess about type I and type II errors for Null Hypothesis H0: p0 = 0.5 VS Alternative hypothesis H1: p1 = 0.85. For setting that what is the chance of a fair coin landing on heads at least 15 times out of 20 flips.


# Type I error means we reject the null hypothesis when it is actually true. It is also known as 'False Positive'. The significance level or alpha (a) is the probability of making a type I error. We usually set it as 0.05 or 0.01.


# The chance of a fair coin landing on heads at least 15 times out of 20 flips, we are using binomial distribution and two tailed test for this question. By calculating on the calculator it is found that the probability of getting 15 or more successes out of 20 trials when the p0 = 0.5 is approximately 0.026. So, it can be said that if the p0 = 0.5, we would reject the null hypothesis and conclude that the proportion is significantly different from 0.5 in about 2.6% of the cases.

# On the other hand, Type II error means we fail to reject the null hypothesis when it is actually false. It is also known as 'False Negative'. The probability of making a type II error is denoted by beta (B).

# To find the probability of a type II error, we know that for the alternative hypothesis, p1 = 0.85. By calculating on the calculator, we got that the chance of a fair coin landing on heads at least 15 times out of 20 flips when p1 = 0.85 is approximately 0.408. This means we would fail to reject the null hypothesis and conclude that the proportion is not significantly different from 0.5 in about 40.8% of the cases.

# In summary, the estimated probabilities of making a type I error and a type II error for this hypothesis test are approximately 0.026 and 0.408, respectively.





# ---------------------------------------------

#Answer to the Q. 2 :

# ---------------------------------------------

# Here is the sample : 2 2 1 2 2 2 1 1 2 1 1 2 2 1 1 2 1 2 2 2 1 2 1 2 1 2 2 2 2 2 2 2 2 1 2 1 2 1 2 2


# We have to test the sample that if it is random or not.


# To test whether the process of treatment assignments is random, we will use a chi-squared fit test. At first we will count the number of treatments of each type, and then compare the observed frequencies to the expected frequencies under the assumption of a random process.

# In this case, there are 40 treatments. Among them:
  
# For Observed frequencies: Type 1 = 18 treatments and Type 2 = 22 treatments.

# Expected frequencies (we assume that there is randomness): Type 1 = 20 treatments and Type 2 = 20  treatments. (As there are 40 treatments in total and a 50% chance of each type).


# To calculate the chi-squared statistic, we can use the formula:
  
#  χ2 = Σ ((Oi - Ei)² / Ei)

# Here,

# Oi = Observed Frequency for category  i , (here i = 1 or 2), 

# Ei = Expected frequency for category i, (here i = 1 or 2).

# And the sum is taken over all categories.

# By using online calculator and plugging the numbers, we got that:
  
  
# χ2 = ((18-20)²/20) + ((22-20)²/20) = 0.4


# To determine whether this value is statistically significant, we need to compare it to a chi-squared distribution with one degree of freedom (since we have two categories and one parameter estimated from the data). Using a table, we find that the p-value for this test is approximately 0.5, which is very large.

# Therefore, we fail to reject the null hypothesis that the treatment assignments are random. In other words, there is no evidence to suggest that the process was biased or non-random.



# ---------------------------------------------

#Answer to the Q. 3 :

# ---------------------------------------------


#Answer for 3 - a


#1

# Taking a sample

x2 <- rbinom(1, 1, 0.5)
x2


#Then identify the range

n <- 1
p <- 0.5


# Find the minimum value

min_value <- min(0, n)


# Find the maximum value

max_value <- max(0:n)


# Calculate the cumulative probability at the minimum value

cdf_min <- pbinom(min_value, n, p)

# Calculate the cumulative probability at the maximum value

cdf_max <- pbinom(max_value, n, p)

# Range of the binomial distribution

range_binomial <- c(min_value, max_value)

range_binomial


#For question 3 - (a) - #2 and #3

# Patient will get “A” if x2 = 1, and get “B” if x2 = 0

# Repeating 1 & 2 for N = 40


N <- 40
x <- rep(NA, N)

x

for (i in 1: N){
  x[i] <- rbinom(1, 1, 0.5)
}

x

# Now assigning A and B for 1 and 0 respectively.

x[x == 1] <- "A"
x[x == 0] <- "B"


# print the modified values of x

print(x)


#Number of A and B

table(x)


# --------------------------------------------


# --------------------------------------------


#Answer for 3 - b



# Set the block size

block_size <- 40


# Create a vector of treatment assignments

treatments <- rep(c("A", "B"), length.out = block_size*1)


# Create a vector of block assignments

blocks <- rep(1:1, each = block_size)


# Randomly permute the blocks

blocks <- sample(blocks)


# Order the treatment assignments within each block

for (i in 1:1) {
  treatments[blocks == i] <- sample(treatments[blocks == i])
}

# View the resulting treatment assignments by block

a <- split(treatments, blocks)

a

#Number of A and B

table(a)

# The difference between 3(a) and 3 (b) is that - in 3 (a) , though the probability is p = 0.5 , for the N = 40 , number of A and B is not same. For my case , A = 18 and B = 22. But, in 3 (b) we used random permutated block randomization with a block size of 40. And for this case number of A and B is same. For my case , A = 20 and B = 20.



# --------------------------------------------

# --------------------------------------------


# Answer for 3 - c


# Set the block size of 8


block_size <- 8


# Create a vector of treatment assignments


treatments <- rep(c("A", "B"), length.out = block_size*5)


# Create a vector of block assignments


blocks <- rep(1:5, each = block_size)




# Randomly permute the blocks



blocks <- sample(blocks)



# Order the treatment assignments within each block

for (i in 1:5) {
  treatments[blocks == i] <- sample(treatments[blocks == i])
}


# View the resulting treatment assignments by block. There are 5 different block with block size of 8


d <- split(treatments, blocks)
d

# Now, merging all the 5 different blocks into 1. So, now there will be 40


b <- unsplit(treatments, blocks)

b


#Number of A and B

table(b)

# The difference between 3(b) and 3 (c) is that - in 3 (b) , we used random permutated block randomization with a block size of 40. And for this case number of A and B is same. For my case , it was A = 20 and B = 20. But, in 3 (c) though we used random permutated block randomization, but this time with a block size of 8. After that we added all the 8 blocks so total sample is 40. And for this case number of A and B is not same. For my case , it was A = 24 and B = 16. 

# If we stop the study for toxicity for in sample size = 20, then for 3 (b) = The difference between number of A and B will not be that much. 

# But, for 3 (c) = The difference between number of A and B will be more than 3 (b)