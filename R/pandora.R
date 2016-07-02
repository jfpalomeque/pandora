pandora <-
function(){
  if (!"ggbiplot" %in% installed.packages()) devtools::install_github("vqv/ggbiplot")
  library(ggbiplot)
  library(tcltk)
  main_menu()
    }
