statistical_tests_menu<-function(){
  cat("statistical_tests_menu")
  switch(menu(c("Pairwise ANOVA", "Pairwise MANOVA", "PCA", "LDA", "LDA with Unknowing material", "Back test_menu")), pairwise.anova_interactive(marks_subsetted), pairwise.manova_interactive(marks_subsetted), PCA_interactive(marks_subsetted), lda_pandora_interactive(marks_subsetted), lda_pandora_interactive_U(marks_subsetted), tests_menu())

}
