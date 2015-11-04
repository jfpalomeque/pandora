pairwise.manova_interactive_sig<-function(data){
  #Get variables with statistical significance up of 5%, in pairwise.ANOVA
  #and do MANOVA
  print(paste("Select cualitative variable for to do groups"))
  V<-variable<-select.list(colnames(data))
  WW<-sig.pairwise.anova.p[,2]
  as.factor(WW)->ZZ
  levels(ZZ)->Z
  variables.using.MANOVA<<-Z
  pairwise.manova(data, V, Z)
  stop(statistical_tests_menu())
}
