write_file_marks <-
function(){
  print(paste("Write name file .marks:  "))
  readline(prompt="Write name file .marks:  ")->>name_file_marks
  paste(name_file_marks, ".marks", sep = "")->>name_file_marks
  write.csv(marks, file = name_file_marks)
  stop(data_processing_menu())
  }
