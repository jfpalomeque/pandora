main_menu <-
function(){
 cat("********************************************\n********** WELCOME PANDORA PACKAGE *********\n********************************************\n\n Main Menu:\n Select one option:")
  switch(menu(c("New DB", "continue dir", "Open marks file", "menu_menus")), new_DB = new_DB(), continue_dir = continue_dir(), select.marks_file_new = select.marks_file_new(), menu_menus())
  }
