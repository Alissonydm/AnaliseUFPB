quantCursos = length(levels(cursos))

#Inicia as variáveis
hPcnt = 0
hPcnt[1:quantCursos] = 0

mPcnt = 0
mPcnt[1:quantCursos] = 0


for(i in 1:quantCursos){
  #Porcentagem de homens em cada curso
  hPcnt[i] = homens[i]*100/(homens[i] + mulheres[i])
  
  #Porcentagem de mulheres em cada curso
  mPcnt[i] = mulheres[i]*100/(homens[i] + mulheres[i])
}