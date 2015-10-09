main_menu <-
function(){
 cat("********************************************\n********** WELCOME PANDORA PACKAGE *********\n********************************************\n\n Main Menu:\n Select one option:")
  switch(menu(c("New DB", "Open marks file", "Open original data")), new_DB = new_DB(), select.marks_file_new = select.marks_file_new(), load_original_dataset = load_original_dataset())
  }
