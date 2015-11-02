continue_DB <-
function(){
  library(grDevices)
  library(jpeg)
  library(CircStats)
  enter.dir()
  while(i<=l){

    dir.process()
    marks<-as.matrix(marks)
    marks<-rbind(marks,newrow)
    marks<<-as.data.frame(marks)
    row.names(marks)<-NULL
    save.image(".RData")


  }
  stop(data_processing_menu())
}
