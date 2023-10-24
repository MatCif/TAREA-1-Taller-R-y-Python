library(readxl)

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')

df<-read_xlsx('2a/simce8b2019_rbd.xlsx')

# Filtrar datos para la Región de Los Ríos
region_seleccionada <- "DE LOS RÍOS"
df_los_rios <- df[df$nom_reg_rbd == region_seleccionada, ]


# Calcular el puntaje promedio de lenguaje, matemáticas y sociedad por comuna
puntaje_promedio_por_comuna <- df_los_rios %>%
  group_by(nom_com_rbd) %>%
  summarise(
    puntaje_promedio_lectura = mean(prom_lect8b_rbd, na.rm = TRUE),
    puntaje_promedio_matematicas = mean(prom_mate8b_rbd, na.rm = TRUE),
    puntaje_promedio_sociedad = mean(prom_soc8b_rbd, na.rm = TRUE),
    establecimientos_con_prueba_lectura = sum(!is.na(prom_lect8b_rbd))
  )

# Mostrar el resultado en pantalla
print(puntaje_promedio_por_comuna)
