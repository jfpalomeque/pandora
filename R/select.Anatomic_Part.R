select.Anatomic_Part <-
  function(){ #Ask user for Anatomic Part
    print(paste("Name image is ",files_names[i]))
    print("Seleccione Anatomic Part = ")
    switch(menu(c("Humero", "Femur", "Radious", "Tibia", "Ulna", "Metacarp", "Metatarse", "Pelvis", "Scapule", "Rib", "Vertebre", "Mandible", "Falange", "Unknow")), "Humero", "Femur", "Radious", "Tibia", "Ulna", "Metacarp", "Metatarse", "Pelvis", "Scapule", "Rib", "Vertebre", "Mandible", "Falange", "Unknow")->>Anatomic_Part}
