select.type <-
function(){ #Ask user for select type of bone, flat, long or unknow
  print(paste("Name image is ",files_names[i]))
  print("Seleccione Type of Bone = ")
  switch(menu(c("Flat", "Long", "Unknow")), "Flat", "Long", "Unknow")->>type_bone}
