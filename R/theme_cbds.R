#' CBDS \code{ggplot2} theme
#'
#' theme that includes black border only on the x- and y- axis, removes grid
#' lines and background, moves axis labels closer to axes, and allows
#' flexibility in font and font szie
#'
#' @param base_size Base font size (default: 12)
#' @param base_family Base font size (default: "sans")
#' @param ... Arguments passed to \code{\link[ggplot2]{theme}}
#'
#' @return An object as returned by \code{\link[ggplot2]{theme}}
#' @seealso \code{\link[ggplot2]{theme}}
#'
#' @export
#'
#' @examples
#' require(ggplot2)
#' ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
#'   geom_point() +
#'   theme_cbds()

theme_cbds <- function(base_size = 12, base_family = "", ...){
  ggplot2::"%+replace%"(
    # change to theme_classic
    ggplot2::theme_classic(base_size = base_size,
                           base_family = base_family),

    # move axis ticks closer to axes
    ggplot2::theme(axis.ticks.length = grid::unit(0, "cm"), ...)
  )
}
