setwd("C:\\Users\\It24101595\\Desktop\\IT24101595")
Delivery.Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery.Times)

breaks <- seq(20, 70, length.out = 10)
hist(Delivery.Times$Delivery_Time_.minutes.,
     breaks = breaks,
     right = FALSE,           # right-open intervals
     col = "lightblue",
     border = "black",
     xlab = "Delivery Times (minutes)",
     ylab = "Frequency",
     main = "Histogram of Delivery Times")

hist_data <- hist(Delivery.Times$Delivery_Time_.minutes.,
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)
class_boundaries <- hist_data$breaks[-1]

plot(class_boundaries, cum_freq,
     type = "o", col = "blue",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     main = "Cumulative Frequency Polygon (Ogive)")
