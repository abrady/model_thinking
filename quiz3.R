# quiz 3 Model Thinking

#Q1: 

# Q2: In a building with 70 residents, a rumor spreads through a diffusion process.
# At what point is the rate of diffusion greater: 
# when 15 people have heard, 
# or when 50 people have heard? (Hint: you can solve this with only a small amount of math)

# diffusion model: everbody gets 'sick'
# Wt: people with wobblies at time t
# R: transmission rate of wobblies
# It: number of people who get infected at time t, based on:
# - Wt: the number of infected people. the higher this is the more get infected
# - R: the rate at which the disease is tranferred
# - H: the number of healthy people = N - Wt
# simple model: everyone meets one other person in a time step:
# n * (n-1) meetings
# probability that infected meets noninfected:
# Wt/n * (N - Wt)/n 
# = Wt*(N - Wt)/N

diffusionModel = function(t) {
  if (t <= 1) {
    1
  } else {
    Wt = diffusionModel(t-1)
    R = .2
    N = 70
    Wt + N*R*(Wt/N)*(N-Wt)/N
  }
}

# the Rate is how many people hear it in the next step:
# N*R*(Wt/N)*(N-Wt)/N
# 15p = N*R*(15/N)*(N-15)/N
# 50p = N*R*(50/N)*(N-50)/N
# 15P < 50p?
# N*R*(15/N)*(N-15)/N < N*R*(50/N)*(N-50)/N?
# cancel out N*R
# (15/N)*(N-15)/N < (50/N)*(N-50)/N?
# take out /N
# (15)*(N-15) < (50)*(N-50)?
# put in N = 70
# 15*(70 - 15) < 50*(70-50)
# subtract
# 15*(55) < 50*(20)
# 825 < 100? No

# Q3: Imagine that a virus has an R0 of 9. What is the minimum percentage of the 
# population that should be vaccinated in order to prevent the spread of this virus? 
# Give your answer to one decimal point (e.g., 50.5%).
# ct/a = 9
# 9*(1-V) = 1
# (1-V) = 1/9
# 1 = 1/9 + V
# 1 - 1/9 = V
# 8/9 = V
print(paste("Q3: vaccination percent is ", 8/9))

# Q4: 

# Q5: Diversity Index
# Imagine a situation in which there exist four possible outcomes:
# one with probability 1/6,
# one with probability 1/3, 
# two with probability 1/4. Calculate the diversity index. (Please round your answer to the hundredths place, i.e. 5.55)
# I think diversity index is just the sum of chances of meeting yourself inverted:
diversityIdx = (1/6^2 + 1/3^2 + 1/4^2 + 1/4^2)^-1
print(paste("Q5: diversity idx:", diversityIdx))

# Q6:
# Note: this question requires careful thinking.
# If output equals 30√K, the savings rate equals 20%, and equilibrium output equals 1200, 
# what is the depreciation rate?
#
# Simple model:
# Wt: workers at time t
# Mt: machines at time t
# Ot: output at time t
# D: depreciation rate
# S: savings rate
#
# Ot = √Mt*√Wt
# St = S*Ot
# Mt' = St - Mt*D
# Mt' = S*Ot - Mt*D

# set investment rate = savings rate:
# O' = 1200
# 1200 = 30√K
# M' = 1600
# D*1600 = .2*1200
# D = .2*1200/1600
# D = .15

# double check: input the above values 
# and plot them
machinesAtTimeT = function(t) {
  if (t <= 1) {
    1
  } else {
    S = .2
    D = .15
    W = 10
    Mt = machinesAtTimeT(t-1);
    Ot = 30*Mt^.5
    It = Ot*S
    Dt = D*Mt
    Mt + It - Dt
  }
}

xs = 1:100
ys = sapply(xs, machinesAtTimeT)
plot(x=xs,y=ys,type='l')
print(paste('should say 1600:', machinesAtTimeT(1000))) # should say 1600

# Q7: A country has a production function such that output equals 40√K where K equals 
#the amount of capital. If this country has 36 units of capital, what is its output?
40*36^.5
240

# Q8: If output equals 40√K, the savings rate equals 10% and the depreciation rate is 20%,
# what is the long run equilibrium level of OUTPUT?
# Ot = 40√K
# K' = .1*40√K - .2*K
# .1*40√K = .2*K
# 4√K = .2*K
# divide K on both sides:
# 4√K/K = .2
# simplify: K = √K*√K
# 4√K/√K√K
# 4/√K = .2
# mult both sides by √K
# 4 = .2√K
# divide by .2
# 20 = √K
# K = 400

# *sigh* can I check this?
# If output equals 40√K, the savings rate equals 10% and the depreciation rate is 20%,
# what is the long run equilibrium level of OUTPUT?
capitalAtT = function(t) {
  if (t <= 1) {
    return(1)
  }
  Kt = capitalAtT(t-1)
  Ot = 40*Kt^.5
  St = .1*Ot
  Dt = .2*Kt
  Kt + St - Dt
}
print(paste("should say 800:", capitalAtT(1000)))


# Q9: A country has a production function of 100√K, a savings rate of 10%, a depreciation
# rate of 10%, and current capital stock, K, of 10,000. Assuming no change in technology, 
# what will be the growth rate for this country?

# growth rate is O'/O?
Kt  = 10000
Ot  = 100*Kt^.5
Ktp = Kt + Ot*.1 - Kt*.1 # save 10%, lose 10%
Otp = 100*Ktp^.5
print(paste("what have we here:",Otp/Ot))

# can I check this? 
nextCapital = function(Kt) {
  Ot = 100*Kt^.5
  Kt + Ot*.1 - Kt*.1
}
# 10000 appears to be equilibrium 

# Q10: Imagine a country in which an innovation changes the output function 
# from 10√K 
#   to 50√K. 
# Assuming that:
# capital depreciates at 10%
# and the country saves  10%, 
# by what factor does equilibrium output increase after the innovation?

# equilibrium is when depreciation = savings
# Ot*S = K*D
# but Ot = N√K
# so:
# N√K = K*D
# putting K on one side:
# N = K*D/√K
# N/D = K/√K
# but K/√K = √K√K/√K = √K
# N/D = √K
# K = (N/D)^2

# once again, we go:
# from 10√K 
#   to 50√K. 
# Assuming that:
# capital depreciates at 10%
# and the country saves  10%, 
# by what factor does equilibrium output increase after the innovation?
# what happens if we change N?
# K  = (10/.1)^2
# K' = (50/.1)^2
# K/K' = (10/.1)^2/(50/.1)^2

c(87, 69, 85, 64, 78, 83)