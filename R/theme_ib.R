#' A [ggplot2] theme for Isabella Benabaye's personal use
#'
#' \code{theme_ib} is a [ggplot2] theme in Isabella Benabaye's personal style.
#'
#' By default (`plots_pane = FALSE`), the theme adjusts the text sizes for
#' printing.`plots_pane = TRUE` is meant to be used when viewing plots in the
#' plots pane and text sizes are not adjusted.  There is also an option (`md =
#' TRUE`) to use markdown theme elements from `ggtext` instead of
#' `element_text()`.
#'
#' @md
#' @param title_family title elements font family
#' @param text_family text elements font family
#' @param base_size base font size
#' @param text_color color of the text & title elements
#' @param bg_color plot background color
#' @param line_color color of line elements
#' @param plot_margin plot margin specifications
#' @param plots_pane indicate whether plots will be viewed in plots pane or not
#' @param md indicate whether to use markdown elements for text
#' @export

theme_ib <- function(title_family = "IBM Plex Sans",
                     text_family = "IBM Plex Mono",
                     base_size = 13, text_color = "gray20",
                     bg_color = "#F7F7F7", line_color = "gray50",
                     plot_margin = margin(20,20,20,20),
                     plots_pane = FALSE,
                     md = FALSE) {

  if (plots_pane == FALSE & md == FALSE) {
    ggplot2::theme_minimal() +
    ggplot2::theme(
      text = element_text(family = text_family,
                          size = base_size,
                          color = text_color),
      title = element_text(family = title_family,
                           color = text_color),
      line = element_line(color = line_color),

      plot.title = element_text(face = "bold",
                                size = base_size * 2,
                                lineheight = 1.2),
      plot.title.position = "plot",
      plot.subtitle = element_text(size = base_size * 1.7,
                                   lineheight = 1.2),
      plot.margin = plot_margin,
      plot.background = element_rect(fill = bg_color,
                                     color = bg_color),

      axis.text = element_text(size = base_size * 1.2),
      axis.title = element_text(size = base_size * 1.6,
                                hjust = 1),
      axis.line = element_line(color = line_color),

      legend.title = element_text(size = base_size * 1.3),
      legend.text = element_text(size = base_size * 1.1)
      )
  } else if (plots_pane == FALSE & md == TRUE) {
    ggplot2::theme_minimal() +
    ggplot2::theme(
      text = element_text(family = text_family,
                          size = base_size,
                          color = text_color),
      title = ggtext::element_markdown(family = title_family,
                           color = text_color),
      line = element_line(color = line_color),

      plot.title = ggtext::element_markdown(face = "bold",
                                size = base_size * 2,
                                lineheight = 1.2),
      plot.title.position = "plot",
      plot.subtitle = ggtext::element_markdown(size = base_size * 1.7,
                                   lineheight = 1.2),
      plot.margin = plot_margin,
      plot.background = element_rect(fill = bg_color,
                                     color = bg_color),

      axis.text = element_text(size = base_size * 1.2),
      axis.title = ggtext::element_markdown(size = base_size * 1.6,
                                hjust = 1),
      axis.line = element_line(color = line_color),

      legend.title = ggtext::element_markdown(size = base_size * 1.3),
      legend.text = element_text(size = base_size * 1.1)
    )
  } else if (plots_pane == TRUE & md == TRUE) {
    ggplot2::theme_minimal(base_size = base_size) +
    ggplot2::theme(
      text = element_text(family = text_family,
                          color = text_color),
      title = element_text(family = title_family),
      line = element_line(color = line_color),

      plot.title = ggtext::element_markdown(face = "bold",
                                lineheight = 1.2),
      plot.title.position = "plot",
      plot.subtitle = ggtext::element_markdown(lineheight = 1.2),
      plot.margin = plot_margin,
      plot.background = element_rect(fill = bg_color,
                                     color = bg_color),

      axis.title = ggtext::element_markdown(hjust = 1),
      axis.line = element_line(color = line_color)
    )
  } else {
    ggplot2::theme_minimal(base_size = base_size) +
    ggplot2::theme(
      text = element_text(family = text_family,
                          color = text_color),
      title = element_text(family = title_family),
      line = element_line(color = line_color),

      plot.title = element_text(face = "bold",
                                lineheight = 1.2),
      plot.title.position = "plot",
      plot.subtitle = element_text(lineheight = 1.2),
      plot.margin = plot_margin,
      plot.background = element_rect(fill = bg_color,
                                     color = bg_color),

      axis.title = element_text(hjust = 1),
      axis.line = element_line(color = line_color)
      )
  }
}

