menu_menus<-function(){
  cat("Select a menu")
  switch(menu(c("Main Menu", "Data_Processing_menu", "tests Menu", "Subsetting_menu", "Subsetting_menu_bis")), main_menu(), data_processing_menu(), tests_menu(), subsetting_DB_menu(), subsetting_DB_menu_bis())
}
