library(readxl)

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')

df<-read_xlsx('2a/simce8b2019_rbd.xlsx')

# Filtrar datos para la Región de Los Ríos
region_seleccionada <- "DE LOS RÍOS"
df_los_rios <- df[df$nom_reg_rbd == region_seleccionada, ]


# Crear una columna con el promedio de los puntajes
puntaje_promedio_por_comuna <- puntaje_promedio_por_comuna %>%
  mutate(promedio_tres_pruebas = (puntaje_promedio_lectura + puntaje_promedio_matematicas + puntaje_promedio_sociedad) / 3)

# Ordenar el dataframe en orden descendente por el promedio de los puntajes
puntaje_promedio_por_comuna <- puntaje_promedio_por_comuna %>%
  arrange(desc(promedio_tres_pruebas))

# Mostrar el resultado en pantalla
print(puntaje_promedio_por_comuna)
