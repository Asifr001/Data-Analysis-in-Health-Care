# -----------------------------------------------------
# ----------------------------------------------------

# Name: Asif Rahman

# The answers that are not mentioned here, will be in the PDF file

# Answer to the question No. 1

# (b) - (i)

# Bayesian Analysis - for a prior distribution Beta(1,1) (given in the question)

a<- 1

b<- 1

# Total sample size, n = 20

n <- 20

# No. of response

s <- 12  

# For 95% CI :

# lower 95% CI

lower <- qbeta(0.025,s+a,n-s+b)

lower

# upper 95% CI

upper <- qbeta(0.975,s+a,n-s+b)

upper

# Answer to the question No. 1

# (b) - (ii)

# Bayesian Analysis - for a prior distribution Beta(50,50) (given in the question)

a1 <- 50

b1 <- 50

# Total sample size

n <- 20

# No. of response

s <- 12  

# For 95% CI :

# lower 95% CI

lower <- qbeta(0.025,s+a1,n-s+b1)

lower

# upper 95% CI

upper <- qbeta(0.975,s+a1,n-s+b1)

upper



# Answer to the question No. 1

# (c)

# Based on Exact binomial distribution:

# Total sample size

n <- 20

# No. of response

s <- 12  

# And alpha

alpha <- 0.05

# Calculate the confidence interval

exact_bi <- binom.test(s, n, conf.level = 1 - alpha)$conf.int

exact_bi


# Answer to the question No. 1

# (d)

# Bootstrapping Method:


# Sample size 20 and number of responses 12:

x <- 12

n <- 20

# Set the number of bootstrap samples to ten thousand

B <- 10000

# Generate the bootstrap samples

boot.samples <- replicate(B, sum(sample(c(1,0), size=n, replace=TRUE, prob=c(x/n, 1-x/n)) == 1))

# Calculate the sample proportions for each bootstrap sample

boot.props <- boot.samples / n

# Calculate the 95% confidence interval based on the sample proportions

boot.ci <- quantile(boot.props, c(0.025, 0.975))

# Print the confidence interval

boot.ci



# Answer to the question No. 1

# (e)

# Normal distribution : (0.3853,0.8147) [ solved in pdf ]

# Bayesian Analysis - for Beta(1,1) - (0.3843544,0.7818031)

# Bayesian Analysis - for Beta(50,50) - (0.427523, 0.6052839)

# Exact binomial distribution: (0.3605426, 0.8088099)

# Bootstrapping Method: (0.4,0.8)

# So, I think Bayesian Analysis - for Beta(50,50) - (0.427523, 0.6052839)

# has the smallest CI (As the difference between the upper limit and the lower limit is the smallest)


# Answer to the question No. 1

# (f) - Redoing everything with 200 patients and 120 responses.

# -------------------------------------------

# Bayesian Analysis - for Beta(1,1)

a<- 1

b<- 1

# Total sample size

n <- 200

# No. of response

s <- 120  

# For 95% CI :

# lower 95% CI

lower <- qbeta(0.025,s+a,n-s+b)

lower

# upper 95% CI

upper <- qbeta(0.975,s+a,n-s+b)

upper

# -------------------------------------------

# Bayesian Analysis - for Beta(50,50)

a1 <- 50

b1 <- 50

# Total sample size

n <- 200

# No. of response

s <- 120  

# For 95% CI :

# lower 95% CI

lower <- qbeta(0.025,s+a1,n-s+b1)

lower

# upper 95% CI

upper <- qbeta(0.975,s+a1,n-s+b1)

upper

# --------------------------------------------------------------

# Exact binomial distribution:

# Total sample size

n <- 200

# No. of response

s <- 120 

# And alpha

alpha <- 0.05

# Calculate the confidence interval

exact_bi <- binom.test(s, n, conf.level = 1 - alpha)$conf.int

exact_bi


# --------------------------------------------------------------

# Bootstrapping Method:


# Sample size 200 and number of responses 120:

x <- 120

n <- 200

# Set the number of bootstrap samples to ten thousand

B <- 10000

# Generate the bootstrap samples

boot.samples <- replicate(B, sum(sample(c(1,0), size=n, replace=TRUE, prob=c(x/n, 1-x/n)) == 1))

# Calculate the sample proportions for each bootstrap sample

boot.props <- boot.samples / n

# Calculate the 95% confidence interval based on the sample proportions

boot.ci <- quantile(boot.props, c(0.025, 0.975))

# Print the confidence interval

boot.ci

# ---------------------------------------------------------

# (e)

# Normal distribution : (0.532,0.668) [ solved in pdf ]

# Bayesian Analysis - for Beta(1,1) - (0.53,0.67)

# Bayesian Analysis - for Beta(50,50) - (0.5103, 0.622)

# Exact binomial distribution: (0.5285, 0.668)

# Bootstrapping Method: (0.53,0.665)

# So, I think the Normal distribution : (0.532,0.668) has the smallest CI



# -----------------------------------------------------
# ----------------------------------------------------

# Answer to the question No. 2

# I have answered 2(a) and 2(b) in pdf
