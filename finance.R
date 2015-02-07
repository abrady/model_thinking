# when does x^5*10k = 20k
# x^5 = 2
x = 2^(1/5)

# Rondo is in the market for a new car. He has narrowed his search down to 2 models.
# Model A costs $32,000 and 
# Model B costs $28,000. With both cars he plans to pay cash and own them for 4 years
# before trading in for a new car. His research indicates that the trade in value for 
# Model A after 4 years is 60% of the initial purchase price, while the trade in value for 
# Model B is 45%. 
# The interest rate is 5%. 
# For simplicity assume that operating and maintenance costs for the models are identical.
# Which model is the better decision and how much "cheaper" is it than the alternative?
ma = -32000
mb = -28000
mb_savings = mb - ma
ma4y_resell = -ma*.6
mb4y_resell = -mb*.45
mb4y_savings_FVM = mb_savings*1.05^4
ma_cost = ma + ma4y_resell - mb4y_savings_FVM
mb_cost = mb + mb4y_resell
cost_diff_FVM = ma_cost - mb_cost
cost_diff = cost_diff_FVM/1.05^4


# College tuition has been rising at a rate of 7% per year.
# Currently the average tuition of a state college is $9,500/year. 
# Andrea’s son Trevor will begin college in 12 years. 
# Andrea’s portfolio is making 5% annually. 
# How much does Andrea need to have set aside today/now to pay for 4 years of college for Trevor?
# (Note:Tuition will continue to change annually and Andrea’s portfolio balance will continue to accrue 
# interest while Trevor is in school. Also, tuition is due at the beginning of each year.)
t_cur = 9500
t_y1 = 9500*1.07^12
t_y2 = t_y1*1.07
t_y3 = t_y2*1.07
t_y4 = t_y3*1.07
t_total = t_y1 + t_y2 + t_y3 + t_y4

#cost_now*1.05^12 = t_total
cost_now = t_y1/1.05^12 + t_y2/1.05^13 + t_y3/1.05^14 + t_y4/1.05^15



# Johnny and Darren both earn $100 working on their respective neighbors' big farms.
# Johnny puts his $100 in the piggy bank that his parents gave him to encourage him to save.
# Darren puts his money in a savings account his parents set up for him. 
# The savings account pays 3% interest. 
# They both take their money out after 5 years. How much more money does Darren have than Johnny?
j = 100
d = 100*1.03^5

# Your dad invested $25 for you in 1942 in a fund and you have not withdrawn any money since.
# If the fund has averaged a return of 8 percent over the last 70 years, 
# what is the current value of that investment? (Round to the nearest whole dollar; enter
# just the number without the $ sign or a comma)
v = 25*1.08^70

# Christine is a new homebuyer. She wants to make sure that she incorporates the cost of maintenance into 
# her decision. She estimates that routine repairs and maintenance on the home she is considering will 
# be $1,590 in the first year (one year from now).
# Due to the increasing age of the home, she expects that maintenance costs will increase 6% annually. 
# The interest rate is 5%. 
# If she plans to be in the home for 10 years, 
# what is the present value of all future maintenance? 
# (Note that maintenance costs will change annually, and starts one year from now and she plans to do the
# last one before selling her house.)

