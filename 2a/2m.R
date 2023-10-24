#Función para encontrar las 10 escuelas que más mejoraron en una comuna
top_10_escuelas_mejora <- function(dataframe, nombre_comuna) {
  # Filtrar los datos para la comuna especificada
  datos_comuna <- dataframe %>%
    filter(nom_com_rbd == nombre_comuna)
  
  # Eliminar las filas con NA en la columna que indica la mejora
  datos_comuna <- datos_comuna[!is.na(datos_comuna$dif_lect8b_rbd), ]
  
  # Ordenar los datos por mejora en orden descendente y seleccionar las 10 mejores escuelas
  top_10 <- datos_comuna %>%
    arrange(desc(dif_lect8b_rbd)) %>%
    head(10)
  
  # Imprimir los nombres de las 10 escuelas que más mejoraron
  cat("Las 10 escuelas principales en", nombre_comuna, "para el puntaje de lenguaje son:\n")
  for (i in 1:nrow(top_10)) {
    cat(top_10[i, "nom_rbd"], "-", top_10[i, "dif_lect8b_rbd"], "\n")
  }
}
