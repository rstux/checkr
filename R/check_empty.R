#' check_empty
#'
#' Checks whether the USER_CODE object after submission has any content at all.
#' Otherwise this will result in an uncaught error.
#'
#' The function checks if any valid lines are found. If not a flag and the message are set.
#'
#' @param USER_CODE list object
#' @param message string
#'
#' @return list object
#' @export
#' @author Reinhard Simon
check_empty <- function(USER_CODE, message = "there is no content.") {
  if(min(USER_CODE$valid_lines) == 0) {
    USER_CODE$passed <- FALSE
    USER_CODE$message <- message
  }
  return(USER_CODE)
}
