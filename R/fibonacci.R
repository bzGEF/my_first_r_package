#' The n-th Fibonacci number
#'
#'Returns the n-th Fibonacci number.
#'@param n The index of the Fibonacci number to retun
#'@export
#'@examples
#'fib(4)
fib <- function(n) {
  if (n == 1 | n == 2) {
    1
  } else {
    fib(n-1) + fib(n-2)
  }
}





