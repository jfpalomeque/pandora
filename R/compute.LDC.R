compute.LDC <-
function(){#Compute measure WIS in mm, between L1 and L4
  LMLDC<-rbind(matrixLM[1,],matrixLM[4,])
  dist_LMLDC<-dist(LMLDC)
  number_distLMLDC<-as.numeric(dist_LMLDC)
  LDC<<-number_distLMLDC*mm_pixel
}
