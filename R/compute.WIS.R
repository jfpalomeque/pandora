compute.WIS <-
function(){#Compute measure WIS in mm, between L1 and L7
  LMWIS<-rbind(matrixLM[1,],matrixLM[7,])
  dist_LMWIS<-dist(LMWIS)
  number_distLMWIS<-as.numeric(dist_LMWIS)
  WIS<<-number_distLMWIS*mm_pixel
}
