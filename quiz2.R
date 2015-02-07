df = data.frame(name=c('a','b', 'c', 'd'), icecream=c(12,12,6,14))
m = mean(df$icecream)
variation = sum((df$icecream - m)^2) # total variance

# new models
df1 = data.frame(name=c('a','d'), icecream=c(12,14))
df2 = data.frame(name=c('b', 'c'), icecream=c(12,6))

var1 = sum((df1$icecream - mean(df1$icecream))^2)
var2 = sum((df2$icecream - mean(df2$icecream))^2)

rsquared = 1 - (var1+var2)/variation
print(rsquared)

# Ricardo: (2,45); Janette: (4,80); Calvin: (7,95), Edith: (3,55); Joachim: (1,30). 
# The mean score is 61. Samuel uses the equation Y=20X to represent the data. 
# Calculate the R-squared value of this line. Assuming that an R-squared value less
# than 0.4 is "poor", a value between 0.4 and 0.8 is "fair", and a value above 0.8 
# is "good", how well does this line Y=20X represent the data?
hrs = c(2,4,7,3,1)
grades = c(45,80,95,55, 30)

plot(grade ~ hrs)
abline(0,20, col='red')
# df = data.frame()

# compute avg variation:
variation_func = function(vals) {
  m = mean(vals)
  sum((vals - m)^2)
}

rsquared = function(xs, ys, model_func) {
  variation = variation_func(ys)
  model_ys = model_func(xs)
  variation_ys = sum((ys - model_ys)^2)
  1 - (variation_ys / variation)
}

# 21%. this is pretty poor compared to the 
# lm model which has .92 or so
print(rsquared(hrs,grades, function(xs) {20*xs}))
abline(lm(grades ~ hrs))


# Let's assume that temperature in the State of Michigan increases linearly between
# January and June. We'll assign each day between January 1st and June 31st a number,
# such that 
# January 1st=1, January 2nd=2.....July 1st=151. 
# The following five data points (X,Y) were collected, 
# where:
# X represents the day and 
# Y represents the temperature that day in degrees Fahrenheit:
# (1,5); (25,15); (46,22); (76,32); (140, 77). 
# Which line better represents the data: 
# Y=0.6X or Y=0.5X? In other words, which of these lines has the greater R-squared value?
days = c(1,25,46,76,140)
temps= c(5,15,22,32, 77)
print(rsquared(days,temps, function(xs) {.6*xs}))
print(rsquared(days,temps, function(xs) {.5*xs}))
plot(temps ~ days)
abline(0,.6,col='red')
abline(0,.5,col='blue')

# Larry has a multiple-variable equation that explains "points scored" in a soccer
# match as a linear function of passing skill, shooting skill and player 
# compatibility. Each of these three variables is ranked on a scale from 1 to 10.
# As a team improves in one of these three respects, their score will increase. 
# Let's assume that the equation is precisely:
# Points Scored = 0.18(Passing Skill)+0.25(Shooting Skill)+0.12(Compatibility).
# MT United is a new soccer team using Larry's model to maximize points scored.
# Should they focus most of their practice on passing, shooting or player compatibility?