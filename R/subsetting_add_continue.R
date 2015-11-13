subsetting_add_continue<-function(data){
  variable<-select.list(colnames(data))
  valor<-select.list(levels(unlist(data[variable])))
  marks_selected<-subset(data, data[variable]==valor)
  marks_subsetted<-rbind(marks_subsetted, marks_selected)
  marks_subsetted<-as.matrix(marks_subsetted)
  marks_subsetted<<-as.data.frame(marks_subsetted)
  stop(subsetting_DB_menu_bis())
}
