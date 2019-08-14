library(ggplot2)

# generate test plot
p <- ggplot2::ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  theme_cbds()

test_that("plot theme defaults", {
  expect_equal(as.character(p$theme$axis.ticks.length), "0cm")
  expect_is(p$theme$panel.grid.major, "element_blank")
  expect_equal(p$theme$panel.background$fill, "white")
  expect_equal(p$theme$axis.line$colour, "black")
})

p2 <- ggplot2::ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  theme_cbds(base_size = 18, base_family = "serif")

test_that("font and font size", {
  expect_equal(p2$theme$text$family, "serif")
  expect_equal(p2$theme$text$size, 18)
})
