experience <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
salary <- c(25000, 28000, 32000, 35000, 39000,
            42000, 46000, 49000, 52000, 56000)
employee_data <- data.frame(experience, salary)
model <- lm(salary ~ experience, data = employee_data)
summary(model)
png("salary_regression.png")
plot(employee_data$experience, employee_data$salary,
     main = "Salary vs Experience",
     xlab = "Years of Experience", ylab = "Salary",
     pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
dev.off()
employee_data$predicted_salary <- predict(model, newdata = employee_data)
png("actual_vs_predicted.png")
plot(employee_data$salary, employee_data$predicted_salary,
     main = "Actual vs Predicted Salaries",
     xlab = "Actual Salary", ylab = "Predicted Salary",
     pch = 19, col = "darkgreen")
abline(0, 1, col = "red", lwd = 2)
dev.off()
coeffs <- coef(model)
write.csv(as.data.frame(coeffs), "coefficients.csv", row.names = TRUE)
write.csv(employee_data, "employee_salary_predictions.csv", row.names = FALSE)
