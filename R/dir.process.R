dir.process <-
function(){
  #enter.site()
  enter.n_site()
  enter.n()
  #select.material()
  select.section()
  #select.taxon()
  select.type()
  enter.scale()
  xy.scale()
  compute.scale()
  xy.LM()
  save.LM()
  compute.WIS()
  compute.WIM()
  compute.WIB()
  compute.LDC()
  compute.RDC()
  compute.d()
  compute.OA()
  newrow<<-c(site, n_site, n, material, section, taxon_bone, type_bone, LM1x, LM1y, LM2x, LM2y, LM3x, LM3y, LM4x, LM4y, LM5x, LM5y, LM6x, LM6y, LM7x, LM7y, WIS, WIM, WIB, LDC, RDC, d, OA)
  i<<-i+1
}
