marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# (a) Equal-Frequency (Equal-Depth) Partitioning
# Number of bins
num_bins <- 3

# Calculate the bin boundaries
bin_edges_eq_freq <- quantile(marks, probs = seq(0, 1, length.out = num_bins + 1))

# Create histogram with equal-frequency bins
hist(marks, breaks = bin_edges_eq_freq, main = "Histogram with Equal-Frequency Bins",
     xlab = "Marks", ylab = "Frequency", col = "lightblue", border = "black")

# Print bin edges for equal-frequency bins
cat("Bin edges for Equal-Frequency Partitioning:", bin_edges_eq_freq, "\n")

# (b) Equal-Width Partitioning
# Calculate the range of the data
range_marks <- range(marks)
width <- (range_marks[2] - range_marks[1]) / num_bins
bin_edges_eq_width <- seq(range_marks[1], range_marks[2], by = width)

# Create histogram with equal-width bins
hist(marks, breaks = bin_edges_eq_width, main = "Histogram with Equal-Width Bins",
     xlab = "Marks", ylab = "Frequency", col = "lightgreen", border = "black")

# Print bin edges for equal-width bins
cat("Bin edges for Equal-Width Partitioning:", bin_edges_eq_width, "\n")
