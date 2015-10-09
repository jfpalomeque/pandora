compute.scale <-
function(){#compute scale size in mm.
  output<-as.matrix(xy_scale$x)
  output<-cbind(output,as.matrix(xy_scale$y))
  dist_output<-dist(output)
  number_dist<-as.numeric(dist_output)
  scale_mm/number_dist->>mm_pixel
}
