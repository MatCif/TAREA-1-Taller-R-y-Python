library(readxl)


df<-read_xlsx('C:/Users/Matias Cifuentes/Desktop/taller R y python/2a/simce8b2019_rbd.xlsx')

# Crear un vector booleano que indique si cada fila no tiene NA en columnas que comienzan por "prom"
filas_sin_na <- complete.cases(df[, grepl("^prom", colnames(df))])

# Filtrar el dataframe original para mantener solo las filas sin NA en esas columnas
df <- df[filas_sin_na, ]
