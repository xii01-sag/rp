employee <- data.frame(
  id = 1:20,
  name = c("John","Alice","Bob","David","Eva","Frank","Grace","Hannah","Ian","Jack",
           "Kiran","Lily","Mike","Nina","Oscar","Priya","Quinn","Ravi","Sophia","Tom"),
  salary = c(18000,22000,25000,30000,15000,28000,32000,21000,26000,24000,
             23000,27000,35000,19000,40000,17000,22000,31000,33000,20000),
  start_date = as.Date(c("2015-01-10","2016-03-15","2014-07-20","2017-06-01","2018-08-12",
                         "2013-11-25","2019-02-18","2020-05-05","2012-09-14","2016-10-10",
                         "2017-12-22","2014-04-09","2011-03-19","2015-07-27","2010-01-30",
                         "2021-09-12","2018-06-11","2013-08-08","2012-12-02","2019-11-15")),
  dept = c("HR","IT","Finance","IT","HR","Finance","IT","Finance","IT","HR",
           "Finance","IT","Finance","HR","IT","Finance","HR","IT","Finance","HR")
)
write.csv(employee, "C:/Users/Admin/Documents/input.csv", row.names = FALSE)
emp_data <- read.csv("C:/Users/Admin/Documents/input.csv")
cat("Number of Rows:", nrow(emp_data), "\n")
cat("Number of Columns:", ncol(emp_data), "\n")
max_salary <- max(emp_data$salary)
cat("Maximum Salary:", max_salary, "\n")
cat("Employee with Maximum Salary:\n")
print(subset(emp_data, salary == max_salary))
cat("Employees in IT Department:\n")
print(subset(emp_data, dept == "IT"))
it_high_salary <- subset(emp_data, dept == "IT" & salary > 20000)
cat("IT Employees with Salary > 20000:\n")
print(it_high_salary)
write.csv(it_high_salary, "output.csv", row.names = FALSE)
