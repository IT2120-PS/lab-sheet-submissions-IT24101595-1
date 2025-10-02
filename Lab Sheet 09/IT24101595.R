setwd("C:\\Users\\rashm\\OneDrive\\Desktop\\IT24101595")

##Exercise

#i
y <- rnorm(25, mean = 45, sd = 2)
print(y)

#ii
t.test(y, mu = 46, alternative = "less")
