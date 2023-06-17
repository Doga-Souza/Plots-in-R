#Para o processo de DataViz utilizarei o pacote ggplot2

install.packages("ggplot2")
library(ggplot2)


#Começando por uma variável qualitativa

load("perfil_investidor.RData")


# Dado que se trata de uma variável categorizada, iremos construir um gráfico de barras (geom_bar)
# Neste caso, o gráfico exibirá a frequência em cada categoria da variável
# Observe que no "aes" (aesthetics), a variável de interesse é inserida como argumento

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil))


# Poderíamos alterar a ordem de apresentação reestruturando as categorias da variável

perfil_investidor$perfil <- factor(perfil_investidor$perfil,
                                   levels = c("Conservador", 
                                              "Moderado", 
                                              "Agressivo"))

# O novo gráfico seria:

ggplot(data = perfil_investidor) +
  geom_bar(aes(x = perfil))





