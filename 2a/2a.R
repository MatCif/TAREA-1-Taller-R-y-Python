library(readxl)


df<-read_xlsx('C:/Users/Matias Cifuentes/Desktop/taller R y python/2a/simce8b2019_rbd.xlsx')

# Ver nombres de las columnas
colnames(df)

# Resumen del dataframe
summary(df)

# Estructura del dataframe
str(df)
