#' Custom scale default settings
#'
#' Sets default values for the `expand` argument of `scale_(x|y)_continuous` and
#' `scale_(x|y)_discrete`.
#'
#' `scale_x_c_ib`: Sets default values for the `expand` argument of
#' `scale_x_continuous` that adds 0.5 units of space on both sides of the plot
#'
#' `scale_x_d_ib`: Sets default values for the `expand` argument of
#' `scale_x_discrete` that adds 0.5 units of space on both sides of the plot
#'
#' `scale_y_c_ib`: Sets default values for the `expand` argument of
#' `scale_y_continuous` such that there is no space below the lowest value and
#' the top end of the plot is extended by 5% (eg. for use with bar plots)
#'
#' `scale_y_d_ib`: Sets default values for the `expand` argument of
#' `scale_y_discrete` such that there is no space below the lowest value and the
#' top end of the plot is extended by 5% (eg. for use with bar plots)
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
