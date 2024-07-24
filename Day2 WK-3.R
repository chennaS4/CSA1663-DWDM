# Load necessary library for plotting
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Class A data
class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)

# Class B data
class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# Function to calculate mean, median, and range
calculate_statistics <- function(data) {
  mean_value <- mean(data)
  median_value <- median(data)
  range_value <- max(data) - min(data)
  return(list(mean = mean_value, median = median_value, range = range_value))
}

# Calculate statistics for Class A
stats_A <- calculate_statistics(class_A)

# Calculate statistics for Class B
stats_B <- calculate_statistics(class_B)

# Print results
cat("Class A:\n")
cat("Mean: ", stats_A$mean, "\n")
cat("Median: ", stats_A$median, "\n")
cat("Range: ", stats_A$range, "\n\n")

cat("Class B:\n")
cat("Mean: ", stats_B$mean, "\n")
cat("Median: ", stats_B$median, "\n")
cat("Range: ", stats_B$range, "\n")

# Create a data frame for boxplot
data <- data.frame(
  Score = c(class_A, class_B),
  Class = factor(rep(c("A", "B"), each = 9))
)

# Plot boxplot
ggplot(data, aes(x = Class, y = Score)) +
  geom_boxplot(fill = c("skyblue", "lightgreen")) +
  ggtitle("Boxplot of Class A and Class B Scores") +
  ylab("Scores") +
  xlab("Class") +
  theme_minimal()

