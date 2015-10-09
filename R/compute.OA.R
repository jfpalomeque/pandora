compute.OA <-
function(){#Compute OA https://en.wikipedia.org/wiki/Law_of_cosines
  LMOA<-rbind(matrixLM[2,],matrixLM[4,],matrixLM[6,])
  
da<-rbind(LMOA[1,],LMOA[2,])
da<-dist(da)
db<-rbind(LMOA[2,],LMOA[3,])
db<-dist(db)
dc<-rbind(LMOA[1,],LMOA[3,])
dc<-dist(dc)
OA<-acos((da^2+db^2-dc^2)/(2*da*db))
OA<<-deg(OA)
}
