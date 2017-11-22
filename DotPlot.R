qplot(x=levels(cursos), y = homens) + 
geom_dotplot(y=mulheres, color = "red", binwidth = .5) + 
theme(plot.title = element_text(size=20), axis.title=element_text(size=12), 
axis.text = element_text(size=8), axis.text.x = element_text(angle = 90, hjust = 1, vjust = .4)) + 
labs(title = "Quantidade de Homens e Mulheres por Curso", x = "Cursos", y = "Quantidade")