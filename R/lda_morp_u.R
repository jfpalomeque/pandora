library(geomorph)
lda.gpa.marks<-function(data){
  print(paste("Select cualitative variable for to do groups"))
  V<-variable<-select.list(colnames(data))

  
  
  
  
marcasLM<-data[,9:22]
marcasLM[,15]<-data[V]
marcasLMy<-marcasLM[marcasLM[,V] != 'U',]
marcasLMu<-marcasLM[marcasLM[,V] == 'U',]
coordsy<-marcasLMy[,-15]
data.matrix(coordsy)->coordsy
coordsy <- arrayspecs(coordsy, 7, 2)



classifiersy<-marcasLMy[,15]
classifiersy<-factor(classifiersy)
gpaLMy<-gpagen(coordsy)
Ay<-gpaLMy$coords
xy <- two.d.array(Ay)

yy<-as.data.frame(xy)
yy<-cbind(yy,classifiersy)
library(MASS)
fit<-lda(classifiersy~V1+V2+V3+V4+V5+V6+V7+V8+V9+V10+V11+V12+V13+V14, data=yy, CV=FALSE)

coordsu<-marcasLMu[,-15]
data.matrix(coordsu)->coordsu

coordsu <- arrayspecs(coordsu, 7, 2)



classifiersu<-marcasLMu[,15]
classifiersu<-factor(classifiersu)
gpaLMu<-gpagen(coordsu)
Au<-gpaLMu$coords
xu <- two.d.array(Au)

yu<-as.data.frame(xu)
yu<-cbind(yu,classifiersu)


x<-predict(fit, yu[,1:14])
predict_morph_lda_table<<-table(yu[,15], x$class)
predict_morph_lda_table
}