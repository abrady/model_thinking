# Quiz 8:
# Section 15 covers Randomness and Random Walk Models.
# Section 16 focuses on the Colonel Blotto Game.
# Both Models can be used to model competition, and there is some math involved in both. The second half of the quiz deals with the specifics of Blotto, so be ready to allocate your troops and choose your fronts.

# Q1: sprinters

# Q2: 0
# A law firm has favorable outcomes in 80% of cases that go to court. 
# They have repeated this feat for many, many years. 
# They recruit the top talent and have some of the top lawyers in the country as partners. 
# If we were to use the Skill vs. Luck Model to determine how much of the law firm's 
# success derives from skill, and how much derives from luck, would we expect the variable
# a to be closer to 0 or to 1? The model tells us that Outcome = a∗Luck+(1−a)∗Skill.
# closer to zero, i.e. a = .2 would match the firm's results

# Q3: No, Brett is wrong
# Brett runs a casino. 
# The odds that a person wins on a single hand of blackjack are 50%.
# Brett has had millions of people come through his casino. One day, a pit boss tells Brett
# that someone has just won 20 hands of blackjack in a row. Brett concludes that due to the
# length of this streak, the wins cannot possibly be fair (or in other words, random). 
# Is Brett's reasoning correct? That is to say, is Brett correct to conclude that a person
# cannot possibly win 20 hands of blackjack in a row without cheating?
# no. if blackjack has a 50% chance of winning, then one would expect to see 20 wins in a row
# once in a million times, e.g. 2^20 ~= 1,000,000, and there is one set of 20 wins there

# Q4

# Q5, nome, screwed
# Imagine the following scenario: Rufus and Cornelius are running in an election for Prime Minister. Cornelius has $1,000 to spend in advertising, while Rufus only has $500.
# There are 5 districts participating in this election. In order to win the election, a candidate must win 3 of 5 districts. Whichever candidate spends the most in advertising in a district will always win that district.
# Assume that Cornelius distributes his advertising budget equally among the 5 districts. Is it possible for Rufus to win the election?
Cm = c(1000,1000,1000,1000,1000)/5

# Q6: 42
# Sasha has 80 troops allocated on 3 fronts. She has 40 on the 1st front, 40 on the 2nd front, and 0 on the 3rd front. 
# What is the minimum number of troops you would need to beat Sasha in this Blotto game? 
# Assume - given that we're looking for the minimum - that you go second, having seen Sasha's allocation, and that there are only two turns:
# Sasha's first, then yours.
# 41 on 2nd, 1 on 3rd
