library(readxl)


df<-read_xlsx('C:/Users/Matias Cifuentes/Desktop/taller R y python/2a/simce8b2019_rbd.xlsx')

# Filtrar datos para la Región de Los Ríos
region_seleccionada <- "DE LOS RÍOS"
df_los_rios <- df[df$nom_reg_rbd == region_seleccionada, ]


# Cargar la librería tidyr
library(tidyr)

# Calcular el puntaje promedio de lectura, matemáticas y sociedad por grupo socioeconómico
puntaje_promedio_grupo_socioeconomico <- df_los_rios %>%
  group_by(cod_grupo) %>%
  summarise(
    puntaje_promedio_lectura = mean(prom_lect8b_rbd, na.rm = TRUE),
    puntaje_promedio_matematicas = mean(prom_mate8b_rbd, na.rm = TRUE),
    puntaje_promedio_sociedad = mean(prom_soc8b_rbd, na.rm = TRUE)
  )

# Calcular la diferencia promedio con el año anterior para lectura, matemáticas y sociedad por grupo socioeconómico
diferencia_promedio_grupo_socioeconomico <- df_los_rios %>%
  group_by(cod_grupo) %>%
  summarise(
    diferencia_promedio_lectura = mean(difgru_lect8b_rbd, na.rm = TRUE),
    diferencia_promedio_matematicas = mean(difgru_mate8b_rbd, na.rm = TRUE),
    diferencia_promedio_sociedad = mean(difgru_soc8b_rbd, na.rm = TRUE)
  )

# Encontrar la prueba con mayor diferencia por grupo socioeconómico
prueba_max_diferencia_socioeconomico <- diferencia_promedio_grupo_socioeconomico %>%
  gather(
    key = "prueba",
    value = "diferencia",
    starts_with("diferencia_promedio_lectura"),
    starts_with("diferencia_promedio_matematicas"),
    starts_with("diferencia_promedio_sociedad")
  ) %>%
  arrange(desc(diferencia)) %>%
  slice(1)

# Mostrar el resultado en pantalla
print(prueba_max_diferencia_socioeconomico)

