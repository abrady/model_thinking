# quiz 10

#45, 25, 56. The actual value is 39[]

avg = 39;
guesses = c(45, 25, 56); 
diff = guesses - avg;
var = diff %*% diff;
diversity = var/length(guesses)