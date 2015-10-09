load_original_dataset<-
  function(){
    data("marks_exp1_hc_hs_id", package="Pandora")
    marks_exp1_hc_hs_id<-marks_exp1_hc_hs_id[,-1]
    marks<<-marks_exp1_hc_hs_id
    rm(marks_exp1_hc_hs_id)
  }
