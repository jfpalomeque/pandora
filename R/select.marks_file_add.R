select.marks_file_add <-
function(){
  file.choose()->marks_file.path
  read.csv(marks_file.path)->>marks_add
  marks_add<-marks_add[,-1]
  names<-c("site", "n_site", "n", "material", "section", "taxon_bone", "type_bone", "Anatom_part", "LM1x", "LM1y", "LM2x", "LM2y", "LM3x", "LM3y", "LM4x", "LM4y", "LM5x", "LM5y", "LM6x", "LM6y", "LM7x", "LM7y", "WIS", "WIM", "WIB", "LDC", "RDC", "SI", "d", "OA")
  names(marks_add)<-names
  marks<<-rbind(marks,marks_add)
  stop(data_processing_menu())
}
