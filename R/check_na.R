#' Return missingness info for a variable
#'
#' Take variable as input and compute the number of total observations, number
#' of missing observations and number of non-missing observations.
#'
#' @param variable Numeric, complex, or logical vectors.
#'
#' @return A matrix including the number of total, missing, and non-missing
#'   observations
#' @export
#'
#' @examples
#' check_na(c(NA, NA, 3, "cbds!", 4.5))
#' check_na(iris$Sepal.Width)

check_na <- function(variable){
  # calculate number of observations
  obs <- length(variable)

  # calculate number of missing observations
  nas <- sum(is.na(variable))

  # nonmissing = total = missing
  non_na <- obs - nas

  # return summary
  out <- cbind(obs, nas, non_na)
  colnames(out) <- c("N", "NAs", "Non-NAs")
  return(out)
}
