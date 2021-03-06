#' plot_ChemoIndex
#'
#'
#' @importFrom magrittr "%>%"
#' @importFrom magrittr "%<>%"
#' @export
#' @examples data %>% plot_ChemoIndex()

plot_ChemoIndex <- function(data, xvar = strain, palette = "main", n.pos = 0, plot.pos = TRUE, ...) {
  #group <- enquo(xvar)
  #xvar <- quo_name(enquo(xvar))
  p <- ggplot(data, aes(x =  {{ xvar }})) +
    ggbeeswarm::geom_quasirandom(aes(y = CI, colour = {{ xvar }}), width = 0.1) +
     theme_classic() +
     add.median(CI, width = 0.5) +
     add.quartiles(CI) +
     scale_x_discrete(drop = FALSE) +
     scale_color_plot(palette = quo_name(enquo(palette)), discrete = TRUE, drop = TRUE) +
     #add.n(xval = {{ xvar }}, y.pos = !!n.pos) #+
     labs(y = "chemotaxis index") +
     figure.axes(no.x = FALSE)

   if (plot.pos) {
     p + coord_cartesian(ylim = c(0,1))
   } else {
       p + coord_cartesian(ylim = c(-1,0)) +
       scale_x_discrete(position = "top")}
}
