library(readxl)
Lista <- read_excel("C:/Users/Alissinho/Desktop/R/Lista.xlsx", 
                    col_types = c("skip", "text", "skip", "text", "text",
                                  "text", "skip", "skip", "skip"))
View(Lista)

cursos = as.factor(Lista$nome_discente)
quantCursos = length(levels(cursos))

mulheres = 0
mulheres[1:quantCursos] = 0

homens = 0
homens[1:quantCursos] = 0

i=1
nLinhas = nrow(Lista)

for(i in 1:nLinhas){
  if(Lista$status[i] == "CANCELADO"){
      #Instrução vazia
  }
  else{
    if(Lista$sexo[i] == "M"){
      j=1
      while(Lista$nome_discente[i] != levels(cursos)[j]){
        j = j + 1
      }
      homens[j] = homens[j] + 1
    }
    else{
      j=1
      while(Lista$nome_discente[i] != levels(cursos)[j]){
        j = j + 1
      }
      mulheres[j] = mulheres[j] + 1
    }
  }
  i = i + 1
}

names(mulheres) = levels(cursos)
names(homens) = levels(cursos)
