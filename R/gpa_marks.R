
gpa.marks<-function(data){
  library(geomorph)
  print(paste("Select cualitative variable for to do groups"))
  V<-variable<-select.list(colnames(data))
#V variable for to do groups

marcasLM<-data[,9:23]
marks_sub<-subset(data, select= V)
marcasLM[,15]<-data[V]
coords<-marcasLM[,-15]
data.matrix(coords)->coords
coords <- arrayspecs(coords, 7, 2)
classifiers<-marcasLM[,15]
classifiers<-factor(classifiers)
gpaLM<-gpagen(coords)

plotAllSpecimens(gpaLM$coords)
 pca.lands <- plotTangentSpace(gpaLM$coords, label=TRUE, groups = classifiers, verbose=TRUE)
 }
