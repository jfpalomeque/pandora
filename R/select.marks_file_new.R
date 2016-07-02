select.marks_file_new <-
function(){
  file.choose()->marks_file.path
  read.csv(marks_file.path)->>marks
  marks<<-marks[,-1]
  names<-c("site", "n_site", "n", "material", "section", "taxon_bone", "type_bone", "Anatom_part", "LM1x", "LM1y", "LM2x", "LM2y", "LM3x", "LM3y", "LM4x", "LM4y", "LM5x", "LM5y", "LM6x", "LM6y", "LM7x", "LM7y", "WIS", "WIM", "WIB", "LDC", "RDC", "SI", "d", "OA")
  names(marks)<-names
  marks<<-marks
  stop(data_processing_menu())
}
