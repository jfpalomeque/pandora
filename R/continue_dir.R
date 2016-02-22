continue_dir <-

  function(){
  #This function load all data from the last directory, and
  #run all other functions in order to continue the new Data Base
    library(grDevices)
    library(jpeg)
    library(CircStats)
    load("dir_data")
    dir_images<<-dir_images
    files<<-files
    files_names<<-files_names
    i<<-i
    l<<-l
    material<<-material
    site<<-site
    taxon_bone<<-taxon_bone
    load("data_marks")
    marks<<-marks
    dir.process()
    names<-c("site", "n_site", "n", "material", "section", "taxon_bone", "type_bone", "LM1x", "LM1y", "LM2x", "LM2y", "LM3x", "LM3y", "LM4x", "LM4y", "LM5x", "LM5y", "LM6x", "LM6y", "LM7x", "LM7y", "WIS", "WIM", "WIB", "LDC", "RDC", "d", "OA")
    marks<-rbind(marks,newrow)
    names(marks)<-names
    for(w in c(1:ncol(marks))) {
      marks[,w] <- as.character(marks[,w])
    }

    while(i<=l){

      dir.process()
      marks<-rbind(marks,newrow)
      marks<<-marks
      save(marks, file="data_marks")
      save.image(".RData")


    }
    data_processing_menu()
  }
