xy.scale <-
function(){#Open new window whit image, and take XY coordinates of scale.
  windows(6,6); plot(seq(0, dim(specimen)[2], length.out = 10), seq(0, dim(specimen)[1], length.out = 10), type = "n", xlab = "x", ylab = "y", asp = 1, tck = 0, xaxt = "n", yaxt = "n")
  rasterImage(specimen, 1, 1, dim(specimen)[2], dim(specimen)[1])
  xy_scale<<-locator(n=2, type="l")
}
