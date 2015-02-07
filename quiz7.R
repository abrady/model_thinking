# quiz 7:
# Section 13 covers Path Dependent outcomes. Some key concept are Urn Models, PATH vs. PHAT dependence, public works and externalities, and increasing returns. Be ready to do some math on urn processes such as Polya and Balancing.
# Section 14 covers Networks. There are a few questions that require you to calculate path length, degree, and so on, and some that require you to think about the meanings of these numbers.

# Q1: 1/3
# In the Polya Process, what is the probability of drawing a blue ball on each of your 
# first two draws? (Assume that you start with one blue ball and one red ball in the urn.)

# B,R
# pick B:
# B,B,R
# P(B) = 2/3
# P(R) = 1/3

# pick R:
# B,R,R
# P(B) = 1/3
# P(R) = 2/3

# now urn is one of:
# B,B,B,R: P(B) = 3/4
# B,B,R,R: P(B) = 2/4
# B,R,R,R: P(B) = 1/4

# how many paths could we have?

# In the Balancing Process, what is the probability of drawing a red ball on each of your first two draws? (Assume you start with one red ball and one blue ball in the urn.)
# {B,R}
# pick R: P = 1/2
# {B,B,R}
# pick R P = 1/3

# Q2: 1/6
# In the Balancing Process, what is the probability of drawing a red ball on each of your first two draws? (Assume you start with one red ball and one blue ball in the urn.)
# 1/2 * 1/3 = 1/6

# Q3: 1/21
# In the Polya Process, what are the odds of picking twenty red balls in a row? (Assume you start with one red ball and one blue ball in the urn.)

# Q4: externalities
# What is the primary reason that the number and combination of public projects in existence might be a path dependent outcome? Please answer in one word, no period.

# Q5: 11
# Using the Polya Process, you pick 10 balls from an urn. What is the diversity index of the distribution of possible outcomes? Please give a numeric answer.
# p(0) = P(1) = P(2) = P(10) = 1/11
# 1/sum(1:11,1/11^2) = 11/11^2 = 1/11 = 11

# Q6: 5
# What is the average degree of a network with six nodes and fifteen edges? Please give a numeric answer.
# avg deg = 2*edges/nodes
# 2*15/6 = 5

# 6 nodes: 6*5/2 = 15
# connectivity of 1

# Q7: 8/6
# A train system connects:
# Detroit to Chicago; 
# Chicago to Minneapolis; 
# Minneapolis to Milwaukee; and
# Milwaukee to Chicago. 
# What's the average path length between all pairs of cities?
# DC = 1
# DM = 2
# DW = 2
# CM = 1
# CW = 1
# MW = 1
# total= 8
# pairs = 6
out = 8/6

# question 8: 0
# What is the clustering coefficient of a family tree network that covers four generations? 
# Assume every person marries and that each couple has exactly two children. 
# Assume that the family tree in this question connects only spouses and mothers to their
# offspring.
# if only connected to mom, zero

# Question 9: 4400
# Suppose that we have a random clique network in which each person has 20 random friends
# and 100 clique friends. How many 2-friends does each person have?
# things to know:
# friends of friends
friend_of_friends = 0 # just my clique
# friends of randoms
friend_of_randoms = 100*20
# randoms of friends
randoms_of_friends = 20*100
# randoms of randoms
randoms_of_randoms = 20*20
total = 100*20*2+20*20