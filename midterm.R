# midterm

# question 7
# Dave owns a spice store. He hires a consultant to construct a linear model that predicts 
# the sales of a spice as a function of its cost. The consultant's model states that sales 
# in pounds per week, S, equals 20−4P, where P = the price per pound in dollars. Prices of 
# the spices range from five to ten dollars. Should Dave rely on the consultant's model?

# no, 5lbs = 0 sold

# question 11
# Imagine you live near a university with a popular basketball team. Every basketball game, 
# you notice that exactly 30% of people take the bus and 70% walk. You also notice that half
# the people who walk to one game take the bus to the next game. What percentage of those
# who take the bus to one game, walk to the next game?
walkers_pct = .3
bus_pct = .7
# next game
new_bussers_pct = .5*walkers_pct # half the walkers take the bus next time
# since bus has limited capacity:
new_walkers_pct = new_bussers_pct
bus_change_pct = new_walkers_pct / bus_pct

# let's say we had 100 people
walk0 = 70
bus0 = 30
# next game, half walkers take the bus
bussers_who_were_walkers = walk0*.5
# but 70 walk and 30 bus, so 35 bussers have to walk this time
# only this is more than the constrained amount 30
walkers_who_were_bussers = bussers_who_were_walkers

walk1 = walk0 - bussers_who_were_walkers + walkers_who_were_bussers
bus1 = bus0 - walkers_who_were_bussers + bussers_who_were_walkers
pct  = walkers_who_were_bussers/bus0

# Q13
# Each member of a five person team has one unique idea for how to approach a problem. 
# If ideas can be applied individually and in pairs to create approaches to the problem, how 
# many total approaches does the team have? (Hint: think of this as recombination). Please 
# input your answer as a whole number with no punctuation.
nMembers = 5
nIdeas = nMembers
nApproaches = nIdeas + choose(nIdeas, 2)
# 15