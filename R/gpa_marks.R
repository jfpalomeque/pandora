library(geomorph)
gpa.marks<-function(){


marcasLM<-marks[,8:22]
marcasLM[,15]<-marks["material"]
coords<-marcasLM[,-15]
data.matrix(coords)->coords
coords <- arrayspecs(coords, 7, 2)
classifiers<-marcasLM[,15]
classifiers<-factor(classifiers)
windows(6,6);gpaLM<-gpagen(coords)
windows(6,6);
plotAllSpecimens(gpaLM$coords)
morphol.disparity(gpaLM$coords, groups=classifiers, iter = 99)
windows(6,6); pca.lands <- plotTangentSpace(gpaLM$coords, label=TRUE, groups = classifiers, verbose=TRUE)
windows(6,6); plot(pca.lands$x)
plot(pca.lands$x[,1:2],pch=15,xlab="PC1",ylab="PC2")
windows(6,6); plotAllSpecimens(pca.lands$x)
}
