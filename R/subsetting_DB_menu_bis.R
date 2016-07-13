subsetting_DB_menu_bis<-function(){
  options<-c("Add marks to selection", "Substract marks from the selection", "View selected marks", "Go tests menu")
  switch(menu(options, title="subsetting_DB_menu"), subsetting_add_continue(marks), subsetting_subtract(marks_subsetted), View_marks_subsetted(), tests_menu())
}
