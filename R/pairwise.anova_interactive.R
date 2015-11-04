pairwise.anova_interactive<-function(data){
  print(paste("Select cualitative variable for to do groups"))
  V<-variable<-select.list(colnames(data))
  cat("Write cuantitative variables for to do ANOVA, \n separated by commas (NOT SPACES, NOT QUOTES)\n")
  print(list(colnames(data)))
  readline(prompt=":")->>Z
  strsplit(Z, ",")->Z
  Z<-unlist(Z)
  pairwise.anova(data, V, Z)
  stop(statistical_tests_menu_bis())
  }
