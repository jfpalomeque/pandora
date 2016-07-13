geomoprh_tests_menu<-function(){
  options<-c( "GPA and PCA", "LDA with GPA results")
  switch(menu(options, title="Geo_morphs_menu"), gpa.marks(marks_subsetted), lda.gpa.marks(marks_subsetted))
}
