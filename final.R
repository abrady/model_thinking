# final
# People learn from others about which policies to support. Three policies are currently proposed: raising taxes, lowering taxes, and keeping taxes the same.
# In October, 10% prefer cutting taxes, 30% prefer raising taxes, and 60% prefer keeping taxes the same.
# In November, 25% prefer cutting taxes, 0% prefer raising taxes, and 75% prefer keeping taxes the same.
# Darwin Charles, a political commentator, argues using replicator dynamics that this data proves that everyone will soon want tax cuts. Imagine a replicator model that supports his conclusions by giving each policy a fitness. Which one of the following set of fitness levels supports Charles' argument? While calculating, round all calculations to the nearest hundredths place (i.e. if your calculator shows 0.346, round to 0.35).

# replicator dynamics:
# change in A = people who are attracted to A - people who leave A
# attracted to A = not(A) * chance that they jump to A
# = some combo of fitness and population
# = attracted(A) + attracted(B) + attracted(C) < 100%
# A = p(A)*f(A) + 

# let's say: A=2, B=0, C=1
# A = 10
# A'= 25
# 15 = adds - minuses
sum_of_prob_pay = .1*2 + .3*0 + .6*1;
# .8
A = .2/.8
C = .6/.8

# The City of Ann Arbor opened a new dog park. If D equals the number of dogs that are at the park, 
# then happiness per dog (at the park) equals 30 - D. This holds so long as there are more than 10 dogs at 
# the park. If there are 10 dogs or fewer in the park, happiness per dog equals 9. 
# Any dogs not at the park have a happiness of 4 in either scenario.
# Assume there are 90 dogs in Ann Arbor. If there are 12 dogs at the park, what is the total happiness of all dogs in Ann Arbor?
dogs_in_park = 12
park_happiness = 30-dogs_in_park
dogs_not_in_park = 90 - dogs_in_park
not_in_park_happiness = dogs_not_in_park*4
total = park_happiness*dogs_in_park + not_in_park_happiness


# A small group of revolutionaries are fighting against their current colonial government. 
# The revolutionaries have 415 troops. The government has 750 troops. 
# What is the minimum number of fronts required for the revolutionaries to have any chance of 
# winning the war? Winning the war is defined as winning more than 50% of fronts. Assume that the government always distributes its troops as evenly as possible across all fronts, and that the revolutionaries are strategic.

N = 11 # num fronts
r_N = (floor(N/2)+1) # num fronts rebels need to win
gov = 750/N

rebels = 415/r_N
#print(rebels)
#print(gov)

# what am I asking? when is this true:
# 415/r_n > 750/N
# for a lot of values. but what if r_n and N are related:
# 415/(N/2) > 750/N
# also a lot of values, when are they equal?
# 415/(N/2) = 750/N
N = 7
print(415/(N/2))
print(750/N)
xs = 8:14
ys = sapply(xs, function(x) { 750/x; })
y2s = sapply(xs, function(x) { 415/(floor(N/2)+1); })
plot(xs,ys)
points(xs,y2s)
y3s = ys - y2s
#plot(xs,y3s,type='l')

# 750/N - 415/(N/2) = dist
# 750/N - 830/N = dist


# There are three predictions: 288, 249, 368. The actual value is 310.
# Which of the following values is closest to the crowd (squared) error?
tot = 195 + 200 + 210
avg = tot/3
err = 10^2 + 5^2 + 5^2
div = (195 - avg)^2 + (200 - avg)^2 + (210 - avg)^2
avg_er = err/3

