data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

num_bins <- 5
sorted_data <- sort(data)
bins <- split(sorted_data, cut(sorted_data, num_bins, include.lowest = TRUE))
bin_mean <- function(bin) rep(mean(bin), length(bin))
bin_median <- function(bin) rep(median(bin), length(bin))
bin_boundaries <- function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) < abs(x - max_val), min_val, max_val))
}
smoothed_bin_mean <- unlist(lapply(bins, bin_mean))
smoothed_bin_median <- unlist(lapply(bins, bin_median))
smoothed_bin_boundaries <- unlist(lapply(bins, bin_boundaries))
cat("Original Data: ", sorted_data, "\n")
cat("Smoothing by Bin Mean: ", smoothed_bin_mean, "\n")
cat("Smoothing by Bin Median: ", smoothed_bin_median, "\n")
cat("Smoothing by Bin Boundaries: ", smoothed_bin_boundaries, "\n")
