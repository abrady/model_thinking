# quiz 5
# A local gym has 200 members. 60% of members who go to the gym one day, will go again 
# the next day. 40% of members who don't go to the gym one day, will go the next day. 
# In equilibrium, how many members will be at the gym?

# what do we want? we want
# p = m*p
# go_to_gym = .6*go_to_gym + .4*(1 - go_to_gym)

p = as.matrix(c(200, 0))
m = matrix(c(.6,.4,0.4,.6),nrow=2)
res = m %*% m %*% m %*% m
# about 50% 100
print(res) # a