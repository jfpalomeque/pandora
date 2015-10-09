data_processing_menu <-
function(){
  cat("Data processing menu:\n Select one option:")
  switch(menu(c("Continue DB", "View DB","Write .marks file", "Add data from .marks file", "Quit" )), continue_DB = continue_DB(), View_DB = View(marks), write_file_marks = write_file_marks(), select.marks_file_add = select.marks_file_add(), stop = stop())
  }
