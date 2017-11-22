hSort = sort(hPcnt)                       #Ordena a porcentagem de homens em ordem crescente
mSort = sort(mPcnt, decreasing = TRUE)    #Ordena a porcentagem de mulheres em ordem decrescente

top50 = c(hSort[1:25], hSort[73:97], mSort[1:25], mSort[73:97])
names = names(top50)[1:50]

Sexo = 0
Sexo[1:50] = "M"
Sexo[51:100] = "F"

Top50 = data.frame(top50, Sexo, names)

ggplot(Top50, aes(x=reorder(names, c(top50[1:50], -top50[51:100])), y=top50)) + 
geom_bar(stat = "Identity", aes(fill=Sexo)) + 
theme(plot.title = element_text(size=20), axis.title=element_text(size=12), 
axis.text = element_text(size=8), axis.text.x = element_text(angle = 90, hjust = 1, vjust = .4)) + 
labs(title = "Porcentagem de Homens e Mulheres por Curso", x = "Cursos", y = "Porcentagem")

