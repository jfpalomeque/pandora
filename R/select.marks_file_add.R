select.marks_file_add <-
function(){
  file.choose()->marks_file.path
  read.csv(marks_file.path)->>marks_add
  marks_add<-marks_add[,-1]
  marks<<-rbind(marks,marks_add)
  stop(data_processing_menu())
}
