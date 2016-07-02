pairwise.anova<-function(data, V, Z){
  #data, data.frame with data for the test, V, variable to create groups,Z, variables to do manova.
  Z<-Z
  options(scipen = 999)
  data<-data
  marks_sub<-subset(data, select= V)
  marks_sub<-as.factor(marks_sub[,1])
  W<-levels(marks_sub)
  combn(W, 2, paste)->c
  pairwise.p<-NULL
  for(i in 1:length(Z)){
    for (x in 1:length(c[1,])) {
      marks_subs<-subset(data, data[V]==c[1,x] | data[V]==c[2,x])
      variable<-as.matrix(subset(marks_subs, select = V))
      Y<-as.matrix(subset(marks_subs, select = Z[i]))
      AOV<-aov(Y ~ variable, data = marks_subs)
      summary(AOV)[[1]][["Pr(>F)"]]->A
      pairwise.line<-c(paste(c[1,x], c[2,x]), Z[i], A[1])
      pairwise.p<-rbind(pairwise.line, pairwise.p)
    }
  }
    row.names(pairwise.p)<-NULL
    colnames(pairwise.p)<-c("Pairwise", "variable", "p-value")
    pairwise.anova.p<-pairwise.p
    pairwise.anova.p<<-pairwise.anova.p
    sig.pairwise.anova.p<<-subset(pairwise.anova.p, pairwise.anova.p[,3]<0.05)
    options(scipen = 15)
}


