#
#Exploring Relationships and Prediction
#

#linear models-----------
#lm()

#mathematical formula
x <- seq(1,100, by=2)
y <- x*2
plot(x,y)
summary(lm(y~x))


#adding random variability
rv <- rnorm(50,5,5)
y <- x*2 + rv
points(x,y, col="red")
summary(lm(y~x))
hist(rv)
summary(rv)


#multiple linear regression
x1 <- rnorm(50,20,2)
x2 <- rnorm(50,100,10)
y <- 7*x1 + 9*x2 
par(mfrow=c(1,2))
plot(y~x1)
plot(y~x2)
summary(lm(y~x1+x2))

y <- 7*x1 + 9*x2 + rnorm(50,5,5)
par(mfrow=c(1,2))
plot(y~x1)
plot(y~x2)
summary(lm(y~x1+x2))


#polynomial linear regression  
x1 <- seq(1,100, by=2)
x2 <- x1^2
plot(x1,x2)

y <- 2*x1 + 6*x2 + rnorm(50,5,5)
plot(x1,y)
summary(lm(y~x1+x2))


#prediction
x <- seq(1,100, by=2)
y <- 2*x + rnorm(50,5,5)
fit <- lm(y~x)
summary(fit)

coef(fit)
coef(fit)[1]
coef(fit)[2]
y.hat <- coef(fit)[1] + coef(fit)[2]*x
plot(y,y.hat)
abline(0,1, col="red", lty="dashed")

res <- y - y.hat
plot(y.hat, res)
abline(h=1, col="red", lty="dashed")

plot(fit)


#generalized linear models----------
#glm()

