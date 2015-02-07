# quiz 6: 11-12, lyapunov functions and coordination and culture

# Let's assume that a Leader and a Follower meet. Four of their dimensions 
# are measured on a scale of 1-9.
# Leader: 7, 3, 2, 1
# Follower: 5, 4, 2, 6.

# let's say they are polar opposites:
l = c(9,9,9,9)
f = c(1,1,1,1)
d = l - f;
pct = function(f, l) {
  d = l - f; # vector from l to f 
  1 - sqrt(d %*% d)/16; # distance from l to f, sqrt(256) - the maximum distance
}

l = c(7,3,2,1)
f = c(5,4,2,6)