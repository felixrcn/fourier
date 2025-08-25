# Indice de précision
précision <- 1:#précision
  
# Vecteur du domaine de la fonction
domaine <- seq(0, pi, length.out = 500)

# Vecteur de l'image
image <- rep(0,length(domaine))

# Définir a0
a0 <- #a0

# Définir an
an <- function(k,t) {
  return() #expression pour an
}

# Définir bn
bn <- function(k,t) {
  return() #expression pour bn
}

# Série de Fourier
image <- image + a0
for(k in précision) {
  image <- image + an(k,domaine) + bn(k,domaine) 
}

# Tableau (optionnel)
sFourier <- data.frame(domaine, image)
print(sFourier)

# Tracer le graphe
plot(domaine, image, type="l")
# grid()