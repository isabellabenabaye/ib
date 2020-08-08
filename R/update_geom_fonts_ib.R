#' Update font defaults for text geoms to match theme_ib
#'
#' Updates [ggplot2::geom_label], [ggplot2::geom_text], and [ggplot2::annotate]
#' font defaults
#'
#' @md
#' @param family default geom font family
#' @param face default geom font face
#' @param size default geom font size
#' @param color default text color
#' @param hjust default hjust value
#' @export

update_geom_fonts_ib <- function(family = "IBM Plex Sans",
                                 face = "plain",
                                 size = 7,
                                 color = "gray20",
                                 hjust = 0) {

  ggplot2::update_geom_defaults("text", list(family = family,
                                             face = face,
                                             fontface = face,
                                             size = size,
                                             color = color,
                                             hjust = hjust))

  ggplot2::update_geom_defaults("label", list(family = family,
                                             face = face,
                                             fontface = face,
                                             size = size,
                                             color = color,
                                             hjust = hjust))
}
