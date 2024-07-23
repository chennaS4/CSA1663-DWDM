data <- c(200, 300, 400, 600, 1000)

min_value <- min(data)
max_value <- max(data)
min_max_normalized <- (data - min_value) / (max_value - min_value)

mean_value <- mean(data)
sd_value <- sd(data)
z_score_normalized <- (data - mean_value) / sd_value

cat("Original Data: ", data, "\n")
cat("Min-Max Normalized Data: ", min_max_normalized, "\n")
cat("Z-Score Normalized Data: ", z_score_normalized, "\n")
