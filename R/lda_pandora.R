lda_pandora<-function(data, V, Z){
library(MASS)
fit<<-lda(as.formula(paste(V,paste(Z, collapse = "+"), sep="~")), data=data, CV=FALSE)
A<-data[V]
A<-as.factor(A[,1])
matriz_confusion<-table(A, predict(fit)$class)
matriz_confusion_LDA<<-diag(prop.table(matriz_confusion, 1))
sume_confusion<<-sum(diag(prop.table(matriz_confusion)))
}

