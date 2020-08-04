#' A [ggplot2] theme for Isabella Benabaye's personal use
#'
#' \code{theme_ib} is a [ggplot2] theme in Isabella Benabaye's personal style
#'
#'

theme_ib <- function(title_family = "IBM Plex Sans",
                     axis_family = "IBM Plex Mono",
                     base_size = 12, text_color = "gray20",
                     bg_color = "#F7F7F7", line_color = "gray50",
                     margin = margin(20)) {

  ib <- ggplot2::theme_minimal()

  ib <- ib + ggplot2::theme(
    text = element_text(family = axis_family,
                        size = base_size,
                        color = text_color),
    line = element_line(color = line_color),
    rect = element_rect(fill = bg_color,
                        color = bg_color),

    plot.title = element_text(face = "bold",
                              size = base_size * 2.16,
                              lineheight = 1.2),
    plot.title.position = "plot",
    plot.subtitle = element_text(size = base_size * 2.05,
                                 lineheight = 1.2),
    plot.margin = margin,

    axis.text = element_text(size = base_size * 1.65),
    axis.title = element_text(size = base_size * 2,
                              hjust = 1),
  )
}
