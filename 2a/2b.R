#Establezco el directorio de trabajo

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')

library(readxl)

df<-read_xlsx('2a/simce8b2019_rbd.xlsx')

# Ver nombres de las columnas
colnames(df)

# Resumen del dataframe
summary(df)

# Estructura del dataframe
str(df)