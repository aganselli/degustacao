###############################
###### Refutando Bresser ######


library(ggplot2)

## Forma��o Bruta de Capital vs. Saldo em Transa��es Correntes

data <- read.csv2('data.csv', sep=';', dec=',')

tail(data)

ggplot(data, aes(fbc, stc))+
  geom_point()+
  geom_smooth(method=lm)+
  labs(title='Forma��o Bruta de Capital vs. Saldo em Transa��es Correntes (% PIB)')

## Forma��o Bruta de Capital Fixo vs. Exporta��es L�quidas

data2 <- read.csv2('data2.csv', sep=';', dec=',')

tail(data2)

ggplot(data2, aes(fbcf, el))+
  geom_point()+
  geom_smooth(method=lm)+
  labs(title='Forma��o Bruta de Capital Fixo vs. Exporta��es L�quidas (% PIB)')
