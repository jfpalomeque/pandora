compute.RDC <-
function(){#Compute measure WIS in mm, between L4 and L7
  LMRDC<-rbind(matrixLM[4,],matrixLM[7,])
  dist_LMRDC<-dist(LMRDC)
  number_distLMRDC<-as.numeric(dist_LMRDC)
  RDC<<-number_distLMRDC*mm_pixel
}
