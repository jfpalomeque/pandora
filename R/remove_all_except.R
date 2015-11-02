A<-5
b<-8
#excp<-"marks"
rm_all_excp<-function(excp){
  excp<<-excp
  objs<-ls(pos = ".GlobalEnv")
  objs<-objs[!(ls(pos = ".GlobalEnv") %in% excp)]
  rm(list= objs, pos = ".GlobalEnv")
}
