PCA_interactive<-function(data){
  print(paste("Select cualitative variable for to do groups"))
  V<-variable<-select.list(colnames(data))
  cat("Write cuantitative variables for to do MANOVA, \n separated by commas (NOT SPACES, NOT QUOTES)\n")
  print(list(colnames(data)))
  readline(prompt=":")->Z
  W<-Z
  strsplit(Z, ",")->Z
  Z<-unlist(Z)
  G<-as.matrix(data[V])
  G<-as.factor(G)
  pca_data<-data[Z]
  for(i in 1:ncol(pca_data)){
    pca_data[,i]<-as.numeric(as.character(pca_data[,i]))
  }
  data.pca_todo<<-prcomp(pca_data, scale.=TRUE)
  p <- ggbiplot(data.pca_todo, obs.scale = 1, var.scale = 1, groups =G, ellipse = TRUE, circle = FALSE)
  A<-paste("PCA, groups", V, "variables", W)
  p<-p+ggtitle(A)
  print(p)
  stop=(statistical_tests_menu_bis())
}
