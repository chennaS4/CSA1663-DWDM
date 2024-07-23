# Sample data for 18 randomly selected adults
age <- c(23, 31, 35, 37, 42, 48, 51, 54, 57, 59, 62, 64, 68, 70, 72, 75, 78, 81)

# Min-Max Normalization for value 35
min_value <- min(age)
max_value <- max(age)
value_to_normalize <- 35
min_max_normalized <- (value_to_normalize - min_value) / (max_value - min_value)

# Z-Score Normalization for value 35
mean_age <- mean(age)
sd_age <- 12.94  # Given standard deviation
z_score_normalized <- (value_to_normalize - mean_age) / sd_age

# Normalization by Decimal Scaling for value 35
max_abs_value <- max(abs(age))
j <- ceiling(log10(max_abs_value))
decimal_scaled <- value_to_normalize / 10^j

# Print results
cat("Min-Max Normalized value of 35: ", min_max_normalized, "\n")
cat("Z-Score Normalized value of 35: ", z_score_normalized, "\n")
cat("Decimal Scaled value of 35: ", decimal_scaled, "\n")
