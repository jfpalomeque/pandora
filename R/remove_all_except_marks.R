rm_all_excp_marks<-function(){
  objs<-ls(pos = ".GlobalEnv")
  objs<-objs[!(ls(pos = ".GlobalEnv") %in% "marks")]
  rm(list= objs, pos = ".GlobalEnv")
}
