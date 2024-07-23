pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_pencils <- mean(pencils)
median_pencils <- median(pencils)
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_pencils <- get_mode(pencils)
cat("Mean of pencils: ", mean_pencils, "\n")
cat("Median of pencils: ", median_pencils, "\n")
cat("Mode of pencils: ", mode_pencils, "\n")
