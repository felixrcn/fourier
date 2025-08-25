library(ggplot2)

# Indice de précision
précision <- 1:30

# Vecteur du domaine de la fonction
domaine <- seq(0, pi, length.out = 500)

# Vecteur de l'image
image <- rep(0,length(domaine))

# Définir a0
a0 <- 1/2

# Définir an
an <- function(k,t) {
  return(0)
}

# Définir bn
bn <- function(k,t) {
  return(2/pi * (sin((2 * k - 1)*t) / (2 * k - 1)))
}

# Série de Fourier
image <- image + a0
for(k in précision) {
  image <- image + an(k,domaine) + bn(k,domaine) 
}

# Construction de la fonction
sFourier <- data.frame(domaine, image)
print(sFourier)

# Create the ggplot
ggplot(sFourier, aes(x = domaine, y = image)) +
  geom_line(color = "black") +
  xlim(-0.1, 3.2) +
  labs(title = "Approximation du créneau", x = "Domaine", y = "Image") +
  theme_minimal()
