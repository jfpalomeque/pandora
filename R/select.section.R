select.section <-
function(){ #Ask user for select name of section (B, C, D, E or F)
  print(paste("Name image is ",files_names[i]))
  print("Seleccione Section = ")
  switch(menu(c("B (10%)", "C (30%)", "D (50%)", "E (70%)", "F (90%)", "W", "Z")), "B", "C", "D", "E", "F", "W", "Z")->>section}
