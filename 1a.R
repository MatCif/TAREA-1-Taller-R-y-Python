# Se solicita al usuario los valores de a, b y c
a <- as.numeric(readline("Ingrese el valor de a: "))
b <- as.numeric(readline("Ingrese el valor de b: "))
c <- as.numeric(readline("Ingrese el valor de c: "))

# Función para resolver la ecuación cuadrática
ec_cuadratica <- function(a, b, c) {
  discriminante <- b^2 - 4 * a * c
  
  if (discriminante > 0) {
    # Dos raíces reales
    raiz1 <- (-b + sqrt(discriminante)) / (2 * a)
    raiz2 <- (-b - sqrt(discriminante)) / (2 * a)
    return(list(raiz1, raiz2))
  } else if (discriminante == 0) {
    # Una raíz real (raíz doble)
    raiz <- -b / (2 * a)
    return(list(raiz))
  } else {
    # No hay raíces reales
    return(list())
  }
}

# Calcular las raíces y mostrar el resultado
raices <- ec_cuadratica(a, b, c)

if (length(raices) == 0) {
  cat("No hay raíces reales\n")
} else if (length(raices) == 1) {
  cat("La raíz es:", raices[[1]], "\n")
} else {
  cat("Las raíces son:", raices[[1]], "y", raices[[2]], "\n")
}
