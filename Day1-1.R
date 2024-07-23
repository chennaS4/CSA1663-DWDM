# Define the intervals and frequencies
intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)

# Compute cumulative frequencies
cumulative_frequencies <- cumsum(frequencies)

# Total number of observations
N <- sum(frequencies)

# Calculate N/2
N_by_2 <- N / 2

# Find the median class
median_class_index <- which(cumulative_frequencies >= N_by_2)[1]

# Define the lower boundary of the median class
L <- c(1, 5, 15, 20, 50, 80)[median_class_index]

# Cumulative frequency of the class preceding the median class
CF <- ifelse(median_class_index == 1, 0, cumulative_frequencies[median_class_index - 1])

# Frequency of the median class
f <- frequencies[median_class_index]

# Width of the median class interval
h <- c(4, 10, 5, 30, 30, 30)[median_class_index]

# Calculate the median
median <- L + ((N_by_2 - CF) / f) * h

# Print the result
print(paste("The approximate median value is:", median))

