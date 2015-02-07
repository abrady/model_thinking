# quiz 9

# Q5
# A city manager offers ten free tulips to any resident who agrees to plant them.
# The cost of planting is one unit of happiness.
# The benefit of planting is 1.5N, where N is the number of people who plant.
# Given these numbers, what should the city manager do to make sure that people take her up on her offer?

# one person plant:
value1 = 1.5 - 1;
value2 = 1.5*2 - 2
value3 = 1.5*3 - 3
# valueN = .5*N

# Q6
# A student can either get a good score or a bad score on an exam. The probability of getting a good score on the exam is 0.8 
# if you study (put in effort e=1) and 0.30 if you don't study (put in effort e=0). The cost of studying = 20.
# A school wants to offer a scholarship of value M that will encourage students to study. Students will receive the scholarship 
# if they get a high score on the exam. Students will get nothing if they receive a low score on the exam.
# Which of the following values of M will ensure that students study? There may be more than one correct answer.
value_studying >= value_not
value_studying = M*.8 - 20
value_not      = M*.3
M*.8 - 20 = M*.3
M*.8 - M*.3 = 20
M(.8 - .3)  = 20
M(.5) = 20
M = 40

# is that true?
value_studying = 40*.8 - 20 = 12
value_not      = 40*.3      = 12

# Q9
# A Pivot Mechanism is used to allocate a public project. The cost of the project is 80. April values the project at 40. 
# Baruk values it at 30 and Cortez values it at 20.
# April 40
# Baruk 30
# Corte 20
RevApril = 30 # without april: pay 30, so she pays just 30
RevBaruk = 20 # without baruk, pay 20
Cortez = 10   # without cortez, pay 10
# project funded? no? that's silly it should

# example: 
# A 40
# B 50
# C 20
# P 80
RevA = 80 - 70 = 10
RevB = 80 - 60 = 20
RevC = 80 - 90 = 0

# how does this dividing up work? you get the value you were willing to make up?
# revenue = Max(Cost - other bids, 0)
# paid = bid - revenue
# sum(paid) = cost
# paidA = 40 - (80 - 70) = 40 + bidB + bidC - 80
# paidA = min(sum(bids) - 80, 40)
# paidB = 50 + bidA+ + bidC
