# Fredrick Ryans
# Statistics 500: Cost Estimation Analysis
# 08/12/2020
#
# PROBLEM
# This program analyzes the pricing of two repair shop companies to 
# see if one shop is charging more than the other.

shopA = c(17.6, 20.2, 19.5, 11.3, 13, 16.3, 15.3, 16.2, 12.2, 14.5, 21.3, 22.1, 16.9, 17.6, 18.4)
shopB = c(17.3, 19.1, 18.4, 11.5, 12.7, 15.8, 14.9, 15.3, 12, 14.2, 21, 21, 16.1, 16.7, 17.5)

print("Shop A")
sd(shopA)
summary(shopA)

print ("Shop B")
sd(shopB)
summary(shopB)

boxplot(shopA, shopB, main="Shop Estimate Analyis in R",xlab="Shop A      Shop B", ylab="")

plot(shopA, shopB, main="Shop Estimate Analysis in R", xlab = "Number of Estimates ", ylab="Estimate")

print("T-test")
t.test(shopA, shopB,alternative = "two.sided",paired = FALSE, var.equal = TRUE, conf.level = 0.95)


# SOURCES-----------------------------------------------------------------------
# [1] https://www.statmethods.net/stats/ttest.html
# [2] http://www.statskingdom.com/140MeanT2eq.html
# [3] #https://www.khanacademy.org/math/ap-statistics/two-sample-inference/two-sample-t-test-means/v/alternative-hypothesis-for-2-sample-t-test
