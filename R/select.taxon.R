select.taxon <-
function(){ #Ask user for select taxon of animal, Caprinae, Cervidae, Suidae, Equidae, Bovid, Other or Unknow
  print(paste("Name image is ",files_names[i]))
  print("Select Taxon of Bone = ")
  switch(menu(c("Caprinae", "Cervidae", "Suidae", "Equidae", "Bovid", "Other", "Unknow")), "Caprinae", "Cervidae", "Suidae", "Equidae", "Bovid", "Other", "Unknow")->>taxon_bone}
