library(ggplot2)

# Read the data
data <- read.table("UScensusdata.txt", header = TRUE)

# Step 2: Calculate log(x) and use t as x
y <- log(data$x.t.)
x <- data$t

# Fit a linear regression model
model <- lm(y ~ x)

# Get the summary of the linear regression model
summary(model)

install.packages("ggplot2")


plot_data <- data.frame(x = x, y = y, y_pred = predict(model))


# Create a scatter plot with the regression line
ggplot(plot_data, aes(x, y)) +
  geom_point() +              # Scatter plot
  geom_line(aes(x, y_pred), color = "blue") +  # Regression line
  labs(
    title = "Census Data and Linear Regression Line",
    x = "Year (t)",
    y = "Log of Population (log(x.t.))"
  )
