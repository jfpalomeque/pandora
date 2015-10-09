compute.d <-
function(){#Compute d
  s<-(WIS+LDC+RDC)/2
  sa<-s-WIS
  sb<-s-LDC
  sc<-s-RDC
  sq<-(s*sa*sb*sc)
  a<-sqrt(sq)
  d<<-2*a/WIS
}
