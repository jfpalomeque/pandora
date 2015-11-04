tests_menu<-function(){
  options<-c( "Select marks for do tests", "Statistical tests", "Geomorphometrics tests")
  switch(menu(options, title="Tests_menu"), subsetting_DB_menu = subsetting_DB_menu(), statistical_tests_menu = statistical_tests_menu(), geomoprh_tests_menu = geomoprh_tests_menu())
}
