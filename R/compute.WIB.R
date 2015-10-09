compute.WIB <-
function(){#Compute measure WIB in mm, between L3 and L5
  LMWIB<-rbind(matrixLM[3,],matrixLM[5,])
  dist_LMWIB<-dist(LMWIB)
  number_distLMWIB<-as.numeric(dist_LMWIB)
  WIB<<-number_distLMWIB*mm_pixel
}
