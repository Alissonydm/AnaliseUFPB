namesH = names(hSort)[78:97]   #Nomes dos cursos com mais homens
namesM = names(hSort)[1:20]    #Nomes dos cursos com mais mulheres
namesE = names(hSort)[46:65]   #Nomes dos cursos mais equilibrados

#Inicia as variáveis já nomeadas
top20H = 0
top20H[1:40] = 0
names(top20H) = c(namesH, namesH)

top20M = 0
top20M[1:40] = 0
names(top20M) = c(namesM, namesM)

top20E = 0
top20E[1:40] = 0
names(top20E) = c(namesE, namesE)

i=1
while(i<21){
  top20H[i] = homens[namesH[i]]         #Top20 dos cursos com mais homens
  top20H[i+20] = mulheres[namesH[i]]
  
  top20M[i] = homens[namesM[i]]         #Top20 dos cursos com mais mulheres
  top20M[i+20] = mulheres[namesM[i]]
  
  top20E[i] = homens[namesE[i]]         #TOp20 dos cursos mais equilibrados
  top20E[i+20] = mulheres[namesE[i]]
  
  i=i+1
}

Top20 = data.frame(top20H, top20M, top20E, namesH, namesM, namesE, Sexo)

#Plota gráfico do curso com mais homens
ggplot(Top20, aes(x=namesH, y=top20H)) + 
geom_bar(stat = "Identity", aes(fill=Sexo), position = position_dodge()) + 
theme(plot.title = element_text(size=20), axis.title=element_text(size=12), 
axis.text = element_text(size=8), axis.text.x = element_text(angle = 90, hjust = 1, vjust = .4)) + 
labs(title = "Quantidade de Homens e Mulheres em Cursos com mais Homens", x = "Cursos", y = "Quantidade")

#Plota gráfico do curso com mais mulheres
ggplot(Top20, aes(x=namesM, y=top20M)) + 
geom_bar(stat = "Identity", aes(fill=Sexo), position = position_dodge()) + 
theme(plot.title = element_text(size=20), axis.title=element_text(size=12), 
axis.text = element_text(size=8), axis.text.x = element_text(angle = 90, hjust = 1, vjust = .4)) + 
labs(title = "Quantidade de Homens e Mulheres em Cursos com mais Mulheres", x = "Cursos", y = "Quantidade")

#Plota gráfico dos cursos mais equilibrados
ggplot(Top20, aes(x=namesE, y=top20E)) + 
geom_bar(stat = "Identity", aes(fill=Sexo), position = position_dodge()) + 
theme(plot.title = element_text(size=20), axis.title=element_text(size=12), 
axis.text = element_text(size=8), axis.text.x = element_text(angle = 90, hjust = 1, vjust = .4)) + 
labs(title = "Quantidade de Homens e Mulheres em Cursos mais equilibrados", x = "Cursos", y = "Quantidade")