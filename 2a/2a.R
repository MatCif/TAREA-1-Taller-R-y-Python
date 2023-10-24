
#Establezco el directorio de trabajo

setwd('G:/Mi unidad/Magister/Magíster en Analítica de Negocios/taller R y python')


#Establecer librería

library(readxl)


df<-read_xlsx('2a/simce8b2019_rbd.xlsx')

print(df)