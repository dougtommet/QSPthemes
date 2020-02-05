
#' QSP Theme 1
#'
#' This is a ggplot theme with a white background and light grey gridlines.
#'
#' @param base_size base font size
#' @param base_family base font family
#'
#' @return a ggplot theme
#' @export
#'
#' @examples
#'
#' mtcars2 <-  dplyr::mutate(mtcars,
#'                       vs = factor(vs, labels = c("V-shaped", "Straight")),
#'                       am =factor(am, labels = c("Automatic", "Manual")),
#'                       cyl = factor(cyl),
#'                       gear = factor(gear))
#'
#' library(ggplot2)
#' p1 <- ggplot2::ggplot(mtcars2) +
#'   geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   labs(title = "Fuel economy declines as weight increases",
#'        subtitle = "(1973-74)",
#'   caption = "Data from the 1974 Motor Trend US magazine.",
#'   tag = "Figure 1",
#'   x = "Weight (1000 lbs)",
#'   y = "Fuel economy (mpg)",
#'   colour = "Gears")
#'
#' p1 + theme_qsp1()
#'
theme_qsp1 <- function (base_size = 11, base_family = "") {

  ggplot2::theme_grey(base_size = base_size, base_family = base_family) +
    ggplot2::theme(legend.key = ggplot2::element_rect(fill = "white", colour = "white"),
          panel.background    = ggplot2::element_rect(fill = "white", colour = NA),
          panel.border        = ggplot2::element_blank(),
          panel.grid.major    = ggplot2::element_line(colour = "grey92"),
          panel.grid.minor    = ggplot2::element_line(colour = "grey92", size = 0.25),
          axis.line           = ggplot2::element_line(),
          strip.background    = ggplot2::element_rect(fill = "grey85", colour = "grey20"))
}








