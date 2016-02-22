enter.dir <-
function(){
#Select directory where are the pictures, and list them. Take too length
#and a object (i) with valor 1
  dir<-choose.dir()
  dir_images<<-dir
  files<<-list.files(dir, pattern= ".jpg", full.names = TRUE)
  files_names<<-list.files(dir, pattern= ".jpg", full.names = FALSE)
  l<-length(files)
  l<<-as.numeric(l)
  i<<-1
  enter.site()
  select.material()
  select.taxon()
  save(dir_images, files, files_names, l, i, site, material, taxon_bone, file="dir_data")

}
