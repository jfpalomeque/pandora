new_DB <-
function(){#This function run all other functions in order to create a new Data Base
    library(grDevices)
    library(jpeg)
    library(CircStats)
    enter.dir()
    marks<<-data.frame()
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
      save.image(".RData")


    }
    data_processing_menu()
    }
