data_processing_menu <-
function(){
  cat("Data processing menu:\n Select one option:")
  switch(menu(c("Continue DB", "View DB","Write .marks file", "Add data from .marks file", "Select marks for do tests", "Go tests menu" )), continue_DB = continue_DB(), View_DB = View_marks(), write_file_marks = write_file_marks(), select.marks_file_add = select.marks_file_add(), subsetting_DB_menu = subsetting_DB_menu(), tests_menu_no_subs = tests_menu_no_subs())
  }
