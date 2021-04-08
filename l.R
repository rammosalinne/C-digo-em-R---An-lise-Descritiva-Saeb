library(tidyverse)
library(knitr)
library(kableExtra)
#media <- sample(100:200,1)
media <- 171
# Cria/Extrai valores que seguem uma distribuição normal
#1000 amostras
for (i in 1:2){
dados(i) <- rnorm(
  n = 15,
  mean = 171
)}

amostras_1000 <- tibble(dados) %>%
  slice_head(n = 2)
for (i in 1:1){
  a <- sample_n(dados, 15, replace = TRUE)%>%
   mutate(grupo = i)
amostras_1000 <- rbind(amostras_1000, a)}

#dados <- 0
#for (i in 1:1000) {

#set.seed(123)
#dados <- rnorm(
 # n = 15,
  #mean = 1
##)


 