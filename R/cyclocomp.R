
#' Cyclomatic Complecity of R Code
#'
#' Cyclomatic complexity is a software metric (measurement), used to indicate
#' the complexity of a program. It is a quantitative measure of the number of
#' linearly independent paths through a program's source code. It was developed
#' by Thomas J. McCabe, Sr. in 1976.
#'
#' @docType package
#' @name cyclocomp
NULL

#' @export

cyclocomp <- function(expr) {
  fg <- flowgraph(expr)
  nrow(fg$edges) - nrow(fg$nodes) + 2
}