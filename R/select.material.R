select.material <-
function(){#Ask user for select the material of tool used for cut
  print("Select material of tool = ")
  switch(menu(c("Metal", "Flint", "Quartzite", "Unknow")), "M", "F","Q", "U")->>material}
