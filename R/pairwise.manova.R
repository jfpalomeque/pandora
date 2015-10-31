#W<-c("B", "C", "D", "E", "F", "W")

#Z<-c("WIB", "d","OA")
#V<-c("material")
#data<-marks
#x<-1

pairwise.manova<-function(data, V, Z){
  #data, data.frame with data for the test, V, variable to create groups,Z, variables to do manova.
  data<-data
  marks_sub<-subset(data, select= V)
  marks_sub<-as.factor(marks_sub[1,])
  W<-levels(marks_sub)
  combn(W, 2, paste)->c
  pairwise.p<-NULL
    for (x in 1:length(c[1,])) {
      marks_subs<-subset(data, data[V]==c[1,x] | data[V]==c[2,x])
      variable<-as.matrix(subset(marks_subs, select = V))
      Y1<-as.matrix(subset(marks_subs, select = Z))
      MVmf<-manova(Y1 ~ variable, data = marks_subs)
      summary(MVmf)$stats[1,6]->A
      pairwise.line<-c(paste(c[1,x], c[2,x]), A)
      pairwise.p<-rbind(pairwise.line, pairwise.p)
    }
  row.names(pairwise.p)<-NULL
  colnames(pairwise.p)<-c("Pairwise", "p-value")
  pairwise.p<<-pairwise.p
  }
