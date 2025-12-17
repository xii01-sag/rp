data("airquality")
names(airquality) <- c("Ozone", "Solar.R", "Wind", "Temp", "Month", "Day")
ozone_data <- na.omit(airquality$Ozone)
hist(ozone_data,
     main = "Histogram of Ozone",
     xlab = "Ozone Levels")
hist(ozone_data,
     main = "Colored Histogram",
     xlab = "Ozone Levels",
     col = "lightblue",
     border = "black")
hist(ozone_data,
     main = "Histogram without Axis",
     xlab = "Ozone Levels",
     ylab = "Frequency",
     axes = FALSE,
     col = "orange")
hist(ozone_data,
     main = "Histogram with Axis Limits",
     xlab = "Ozone Levels",
     col = "green",
     xlim = c(0, 200),
     ylim = c(0, 50))
hist(ozone_data,
     main = "Histogram with Density Curve",
     xlab = "Ozone Levels",
     col = "lightgray",
     freq = FALSE)
lines(density(ozone_data),
      col = "red",
      lwd = 2)
