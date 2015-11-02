rm_all<-function(){
  objs<-ls(pos = ".GlobalEnv")
  rm(list= objs, pos = ".GlobalEnv")
}
