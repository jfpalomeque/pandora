subsetting_add<-function(data){
  variable<-select.list(colnames(data))
  valor<-select.list(levels(unlist(data[variable])))
  marks_selected<-subset(data, data[variable]==valor)
  marks_subsetted<-NULL
  marks_subsetted<<-rbind(marks_subsetted, marks_selected)
  stop(subsetting_DB_menu_bis())
}
