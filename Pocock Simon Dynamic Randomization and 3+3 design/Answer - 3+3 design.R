# ---------------------------------------------
# Answer to the Question # 3
# ---------------------------------------------
#Answer for 3 – (a) : 10000 simulations in R

# (1) Dosage that has low toxicity probability of 0.1:

# Setting 10000 simulations
N <- 10000

#Probability of the toxicity
pT<- 0.10

# Put 1 if dose-escalation is happening. Put 0 otherwise.

# (Otherwise Means = MTD or no dose-escalation)

#As it is a 3+3 design cohort size =3

escalation <- function(pT)         
{
  id.escal <- 1
  N.tox <- rbinom(1, 3, prob = pT) 
  if(N.tox == 1) {
    tox <- rbinom(1, 3, prob = pT)
    if(tox >= 1) {
      id.escal <- 0
    }
  }
  if(N.tox > 1) { id.escal <- 0}
  return(id.escal)
}

res <- rep(NA,N)
for ( i in 1:N){
  res[i] <- escalation(pT)
}
sum(res/N)

# (2) Dosage that has medium toxicity probability of 0.3:

# Setting 10000 simulations
N <- 10000

#Probability of the toxicity
pT<- 0.3

# Put 1 if dose-escalation is happening. Put 0 otherwise.

# (Otherwise Means = MTD or no dose-escalation)

#As it is a 3+3 design cohort size =3

escalation <- function(pT)         
{
  id.escal <- 1
  N.tox <- rbinom(1, 3, prob = pT) 
  if(N.tox == 1) {
    tox <- rbinom(1, 3, prob = pT)
    if(tox >= 1) {
      id.escal <- 0
    }
  }
  if(N.tox > 1) { id.escal <- 0}
  return(id.escal)
}

res <- rep(NA,N)
for ( i in 1:N){
  res[i] <- escalation(pT)
}
sum(res/N)


# (3) Dosage that has medium toxicity probability of 0.6:

# Setting 10000 simulations
N <- 10000

#Probability of the toxicity
pT<- 0.6

# Put 1 if dose-escalation is happening. Put 0 otherwise.

# (Otherwise Means = MTD or no dose-escalation)

#As it is a 3+3 design cohort size =3

escalation <- function(pT)         
{
  id.escal <- 1
  N.tox <- rbinom(1, 3, prob = pT) 
  if(N.tox == 1) {
    tox <- rbinom(1, 3, prob = pT)
    if(tox >= 1) {
      id.escal <- 0
    }
  }
  if(N.tox > 1) { id.escal <- 0}
  return(id.escal)
}

res <- rep(NA,N)
for ( i in 1:N){
  res[i] <- escalation(pT)
}
sum(res/N)