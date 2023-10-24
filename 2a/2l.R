library(readxl)

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')

df<-read_xlsx('2a/simce8b2019_rbd.xlsx')

# Filtrar datos para la Región de Los Ríos
region_seleccionada <- "DE LOS RÍOS"
df_los_rios <- df[df$nom_reg_rbd == region_seleccionada, ]


# Función para obtener el puntaje promedio por comuna
obtener_puntaje_promedio_por_comuna <- function(dataframe, comuna) {
  puntaje_comuna <- dataframe %>%
    filter(nom_com_rbd == comuna) %>%
    select(puntaje_promedio_lectura, puntaje_promedio_matematicas, puntaje_promedio_sociedad)
  
  return(list(puntaje_comuna))
}