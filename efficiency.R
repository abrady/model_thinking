# plot log vs. log
Cx = 1:150
Cy = log(Cx)
plot(0,0, xlim=c(0,150), ylim=c(0,10), xlab="people-time", ylab="system efficiency");
lines(Cy ~ Cx, type='l', col="blue");

N_efficiency = 1.25

s = 50
Nx = 0:100;
Ny = N_efficiency*log(Nx);
Nx = s + Nx
lines(Ny ~ Nx, col="red", type="l");

# these two curves capture the ability of the systems to do what we need them to do.
# e.g. this could be the performance of our code base on Zend vs. HipHop
# Nx(t) : could be a benchmark score

# one important question: wend does En = Ec?
# log(t+s) = E*log(t)
# log(t+s) = log(t^E)
# t+s = t^E
# s = t^E - t
# s = t(t^E-1 -1)
# 
# s = t^(E-1) - 1
# s + 1 = t^(E-1)
# (s + 1)^(1/E-1)
# s = t^E-t
# 50 = 