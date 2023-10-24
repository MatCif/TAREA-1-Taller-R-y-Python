
#Se define la función
es_primo <- function() {
  numero <- as.numeric(readline("Ingrese un número: "))
  
#Se establece restricción numérica  
  if (!is.numeric(numero)) {
    return("Favor ingresar un número")
  }
  
  else if (numero <= 1) {
    return("tiene que ser mayor a 1")
  }
  
  i <- 2
  es_primo <- TRUE
  
  while (i < numero) {
    if (numero %% i == 0) {
      es_primo <- FALSE
      break
    }
    i <- i + 1
  }
  
  if (es_primo) {
    return("es primo")
  } else {
    return("no es primo")
  }
}

# Llamamos a la función para verificar si el número ingresado por el usuario es primo
resultado <- es_primo()
cat("El número ingresado", resultado, "\n")
