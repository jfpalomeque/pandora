subsetting_DB_menu<-function(){
  options<-c("Add marks to selection", "Substract marks from main marks to the selection", "View main marks", "Back Data_Processing_menu", "Go tests menu")
  switch(menu(options, title="subsetting_DB_menu"), subsetting_add(marks), subsetting_subtract(marks), View(marks), data_processing_menu(), tests_menu())
  }
