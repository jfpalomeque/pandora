compute.WIM <-
function(){#Compute measure WIM in mm, between L2 and L6
  LMWIM<-rbind(matrixLM[2,],matrixLM[6,])
  dist_LMWIM<-dist(LMWIM)
  number_distLMWIM<-as.numeric(dist_LMWIM)
  WIM<<-number_distLMWIM*mm_pixel
}
