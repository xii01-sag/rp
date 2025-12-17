install.packages("e1071")
library(e1071)
data("mtcars")
cat("Number of Observations (rows):", nrow(mtcars), "\n")
cat("Number of Variables (columns):", ncol(mtcars), "\n")
max_hp <- max(mtcars$hp)
min_hp <- min(mtcars$hp)
cat("\nCar with Maximum Horsepower:\n")
print(mtcars[mtcars$hp == max_hp, ])
cat("\nCar with Minimum Horsepower:\n")
print(mtcars[mtcars$hp == min_hp, ])
par(mfrow = c(3, 4))
for (var in names(mtcars)) {
  hist(mtcars[[var]],
       main = paste("Histogram of", var),
       xlab = var,
       col = "lightblue",
       border = "black",
       freq = FALSE)
  lines(density(mtcars[[var]]), col = "red", lwd = 2)
}
par(mfrow = c(1, 1))
cat("\nSkewness of variables:\n")
for (var in names(mtcars)) {
  sk <- skewness(mtcars[[var]])
  cat(var, ":", sk, "\n")
}
hp_cyl3 <- mtcars$hp[mtcars$cyl == 3]
hp_cyl4 <- mtcars$hp[mtcars$cyl == 4]
mean_diff <- mean(hp_cyl3) - mean(hp_cyl4)
sd_diff <- sd(hp_cyl3) - sd(hp_cyl4)
cat("\nAverage HP difference (3 cyl - 4 cyl):", mean_diff, "\n")
cat("SD difference of HP (3 cyl - 4 cyl):", sd_diff, "\n")
cor_matrix <- cor(mtcars)
max_corr <- max(cor_matrix[upper.tri(cor_matrix)])
where <- which(cor_matrix == max_corr, arr.ind = TRUE)
var1 <- rownames(cor_matrix)[where[1]]
var2 <- colnames(cor_matrix)[where[2]]
cat("\nHighest Pearson Correlation:\n")
cat(var1, "and", var2, "with correlation =", max_corr, "\n")
