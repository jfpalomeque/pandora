enter.scale <-
function(){ #Ask user for scale value
  print(paste("Name image is ",files_names[i]))
  specimen <<- readJPEG(files[i], native = T)
  windows(6,6); plot(seq(0, dim(specimen)[2], length.out = 10), seq(0, dim(specimen)[1], length.out = 10), type = "n", xlab = "x", ylab = "y", asp = 1, tck = 0, xaxt = "n", yaxt = "n")
  rasterImage(specimen, 1, 1, dim(specimen)[2], dim(specimen)[1])
  readline(prompt="Enter scale value en mm = ")->scale_mm
  as.numeric(scale_mm)->>scale_mm
}
