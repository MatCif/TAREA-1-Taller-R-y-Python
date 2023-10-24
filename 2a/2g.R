library(readxl)

df<-read_xlsx('C:/Users/Matias Cifuentes/Desktop/taller R y python/2a/simce8b2019_rbd.xlsx')

# Filtrar datos para la Región de Los Ríos
region_seleccionada <- "DE LOS RÍOS"
df_los_rios <- df[df$nom_reg_rbd == region_seleccionada, ]
