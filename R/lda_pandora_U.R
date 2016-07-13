lda_pandora_U<-function(data, V, Z){
library(MASS)

y<-subset(data, material != "U")
y<-cbind.data.frame(y$material, y$WIS, y$WIM, y$WIB, y$SI, y$d, y$OA)
names(y)<-c("material", "WIS","WIM","WIB","d","SI","OA")
y$material<-droplevels(y$material)

U<-subset(data, material == "U")
U<-cbind.data.frame(U$material, U$WIS, U$WIM, U$WIB, U$SI, U$d, U$OA)
names(U)<-c("material", "WIS","WIM","WIB","d","SI","OA")
U$material<-droplevels(U$material)
for(i in 2:7) {
  y[,i] <- as.numeric(as.character(y[,i]))
}


fit<-lda(as.formula(material~WIS+WIM+WIB+SI+d+OA), data=y, CV=FALSE)
  
A<-y[V]
A<-as.factor(A[,1])
matriz_confusion<<-table(A, predict(fit, type="class")$class)

for(i in 2:7) {
  U[,i] <- as.numeric(as.character(U[,i]))
}
x<-predict(fit, U[,2:7])
table(U$material, x$class)->>Predict_table_U
}
