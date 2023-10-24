
library(readxl)
library(dplyr)

#Establezco el directorio de trabajo

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')

df<-read_xlsx('2a/simce8b2019_rbd.xlsx')
# Crear la nueva columna usando case_when
df <- df %>%
  mutate(tipo_dependencia = case_when(
    cod_depe2 == 1 ~ "Municipal",
    cod_depe2 == 2 ~ "Particular Subvencionado",
    cod_depe2 == 3 ~ "Particular Pagado",
    cod_depe2 == 4 ~ "Servicio Local de Educación",
    TRUE ~ "Otro" # Si no coincide con ninguna de las anteriores
  ))