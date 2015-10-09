library(MASS)
#LDA
fit<-lda(material~WIS+WIM+WIB+LDC+RDC+d+OA, data=marks, CV=FALSE)
fit
matriz_confusion<-table(marks$material,predict(fit)$class)
matriz_confusion
diag(prop.table(matriz_confusion, 1))
sum(diag(prop.table(matriz_confusion)))
#qda
qfit<-qda(material~WIS+WIM+WIB+LDC+RDC+d+OA, data=marks, CV=FALSE)
qfit
qmatriz_confusion<-table(marks$material,predict(qfit)$class)
qmatriz_confusion
diag(prop.table(qmatriz_confusion, 1))
sum(diag(prop.table(qmatriz_confusion)))
