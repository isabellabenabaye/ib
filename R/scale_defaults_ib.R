#' Custom scale default settings
#'
#' Sets default values for the `expand` argument of scale_(x|y)_continuous and
#' scale_(x|y)_discrete.
#'
#' @name scale_defaults_ib
NULL

#' @rdname scale_defaults_ib
#' @export

scale_x_c_ib <- function(...) {
  ggplot2::scale_x_continuous(expand = expansion(add = 0.5), ...)
}

#' @rdname scale_defaults_ib
#' @export

scale_x_d_ib <- function(...) {
  ggplot2::scale_x_discrete(expand = expansion(add = 0.5), ...)
}

#' @rdname scale_defaults_ib
#' @export

scale_y_c_ib <- function(...) {
  ggplot2::scale_y_continuous(expand = expansion(mult = c(0, .05)), ...)
}

#' @rdname scale_defaults_ib
#' @export

scale_y_d_ib <- function(...) {
  ggplot2::scale_y_discrete(expand = expansion(mult = c(0, .05)), ...)
}
