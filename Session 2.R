#
#Inferential statistics
#

#one sample---------
#means

#Student's t test
?t.test

#scenario 1
y <- rnorm(10000,115,20)
head(y)
hist(y)
abline(v=112)

n <- length(y)
df <- n - 1
t_critical <- qt(0.975, df)
se_y <- sd(y) / sqrt(n)
manual_ci <- c(
  mean = mean(y), 
  lower = mean(y)- t_critical * se_y, 
  upper = mean(y) + t_critical * se_y
)
manual_ci
t.test(y, mu=112)

#normal approximation
c(mean(y), mean(y) - 1.96*sd(y)/sqrt(length(y)), mean(y) + 1.96*sd(y)/sqrt(length(y)))


#scenario 2
y <- rnorm(100,115,20)
head(y)
hist(y)
abline(v=112)
n <- length(y)
df <- n - 1
t_critical <- qt(0.975, df)
se_y <- sd(y) / sqrt(n)
manual_ci <- c(
  mean = mean(y), 
  lower = mean(y)- t_critical * se_y, 
  upper = mean(y) + t_critical * se_y
)
manual_ci
t.test(y, mu=112)

#scenario 3
y <- rnorm(10,115,20)
head(y)
hist(y)
abline(v=112)

summary(y)
sd(y)

n <- length(y)
df <- n - 1
t_critical <- qt(0.975, df)
se_y <- sd(y) / sqrt(n)
manual_ci <- c(
  mean = mean(y), 
  lower = mean(y)- t_critical * se_y, 
  upper = mean(y) + t_critical * se_y
)
manual_ci
t.test(y, mu=112)



#proportions
?prop.test
prop.test(x=3000, n=10000, p=0.25)
prop.test(x=30, n=100, p=0.25)



#two samples---------
#means
y1 <- rnorm(100,25,10)
y2 <- rnorm(100,30,10)

summary(y1)
summary(y2)

hist(y1, 
     col = rgb(0.2, 0.4, 0.6, 0.5), 
     border = "white",
     xlim = c(min(c(y1, y2)), max(c(y,y))), # Ensure both fit
     main = "Overlapping Histograms",
     xlab = "Value")

# 4. Overlay the second histogram
hist(y2, 
     col = rgb(0.8, 0.2, 0.2, 0.5), 
     border = "white", 
     add = TRUE) # This is the key argument

?t.test
var.test(y1,y2)

t.test(y1,y2)
t.test(y1,y2, var.equal = T)
t.test(y1,y2, paired = T)


#proportions
prop.test(x=c(45,50), n=c(100,100))
prop.test(x=c(30,50), n=c(100,100))




#more than two samples---------

#means
y1 <- rnorm(100,20,10)
y2 <- rnorm(100,29,10)
y3 <- rnorm(100,30,10)

df  <- data.frame(group= c(rep("A", 100), rep("B", 100), rep("C", 100)),
           BMI=c(y1,y2,y3))

aov.output <-  aov(df$BMI~df$group)
summary(aov.output)

tukey.output <- TukeyHSD(aov.output)
tukey.output
plot(tukey.output,las = 1)


#categorical data-------------

smoke <- sample(c("Yes", "No"), 100, replace = T)
cancer <- sample(c("Yes", "No"), 100, replace = T)

table(smoke, cancer)
prop.table(table(smoke, cancer), 1)*100
chisq.test(table(smoke, cancer))



smoke <- sample(c("Yes", "No"), 100, replace = T)
cancer <- sample(c("Yes", "No"), 100, prob = c(0.05,0.95),replace = T)

table(smoke, cancer)
prop.table(table(smoke, cancer), 1)*100
chisq.test(table(smoke, cancer))
fisher.test(table(smoke, cancer))
 























