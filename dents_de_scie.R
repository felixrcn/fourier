library(ggplot2)


# Indice de précision
précision <- 1:30
  
  # Vecteur du domaine de la fonction
  domaine <- seq(-pi, pi, length.out = 500)
  
  # Vecteur de l'image
  image <- rep(0,length(domaine))
  
  # Définir a0
  a0 <- pi
    
    # Définir an
    an <- function(k,t) {
      return(0) #expression pour an
    }
  
  # Définir bn
  bn <- function(k,t) {
    return(-cos(k*pi)/k)  }
  
  # Série de Fourier
  image <- image + a0/2
  for(k in précision) {
    image <- image + an(k,domaine) * cos(k*domaine) + bn(k,domaine) * sin(k*domaine) 
  }
  
  # Tableau (optionnel)
  sFourier <- data.frame(domaine, image)
  
  # Create the ggplot
  ggplot(sFourier, aes(x = domaine, y = image)) +
    geom_line(color = "black") +
    xlim(-0.1 - pi , pi + 0.1) +
    labs(title = "Approximation du signal dents de scie", x = "Domaine", y = "Image") +
    theme_minimal()
  
  