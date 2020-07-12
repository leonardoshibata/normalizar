#' Normalize strings
#'
#' Normalize strings, removing diacritics, numbers, punctuations, leading and
#'  trailing blank spaces and double spaces.
#'
#' @param x A string.
#'
#' @return The normalized string
#' @export
#'
#' @examples normalizar("São Paulo 2020!")
normalizar <- function(x) {
  a <- stringr::str_to_upper(x)  # upper case
  b <- stringi::stri_trans_general(a, "Latin-ASCII")  # remove diacritics
  c <- stringr::str_remove_all(b, "[:digit:]")  # remove numbers
  d <- stringr::str_remove_all(c, "[:punct:]")  # remove punctuation marks
  e <- stringr::str_squish(d)  # remove leading, trailing and double spaces
  e
}
