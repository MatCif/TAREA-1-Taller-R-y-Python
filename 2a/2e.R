#Establezco el directorio de trabajo

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')

library(readxl)

df<-read_xlsx('2a/simce8b2019_rbd.xlsx')

# Crear un vector booleano que indique si cada fila no tiene NA en columnas que comienzan por "prom"
filas_sin_na <- complete.cases(df[, grepl("^prom", colnames(df))])

# Filtrar el dataframe original para mantener solo las filas sin NA en esas columnas
df2 <- df[filas_sin_na, ]

# Porcentaje de datos borrados
porcentaje_borrado <- 100 * (1 - nrow(df2) / nrow(df))
cat("Porcentaje de datos borrados:", porcentaje_borrado, "%\n")
