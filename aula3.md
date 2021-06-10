---
title: "Aula 3"
output: pdf_document
---

# Dataframes

    O que são dataframes?
    
Os elementos dentro de uma matriz não podem ser de classes/tipos diferentes. Porém quando tratamos de
grandes volumes de dados precisamos trabalhar com vários tipos de dados. 
Um dataframe é capaz de armazenar objetos de classes diferentes. 
Porém, não podemos armazenar objetos de classes diferentes dentro de uma mesma coluna (ou variável)
Um data frame tem as variáveis armazenadas em colunas e as observações como linhas. 
    
    Vamos criar um dataframe
    
* Crie vetores separados: cada vetor é uma coluna do seu dataframe. 
Cada vetor atribua a uma variável.
  
* Atribua todos os vetores (concatenação de vetores) a um dataframe:
  data.frame(vetor1, vetor2, vetor3)
    
* funções legais para data.frames:
    
  head(data)  
  tail(data)
  str(data) #estrutura
  summary(data)
    
### Selecionando variáveis dentro de um vetor
    
    * Para selecionar variáveis dentro de um vetor trabalhamos com a mesma lógica de matrizes
    data[4, 5] * Seleciona a variável que está alocada na linha 4, coluna 5
    data[4, ] * Seleciona a linha 4 inteira
    data[, 5] * Seleciona a colunha 5 inteira
    
    E se eu quiser apenas um intervalo de uma coluna?
    data[1:5, "sexo"] 
    
    E se eu quiser apenas um intervalo dentro de uma linha (um caso/individuo)?
    data[1, 3:5]
    
    *Temos um modo mais fácil de fazer essa "filtragem"
    
    A função subset é capaz de fazer isso. 
    
    O que acontece em cada um desses casos?
    
    subset(banco, banco$sexo == "F")
    subset(banco, banco$idade < 30)
    subset(banco, banco$idade < 50 && banco$raca != "negra")
    subset(banco$idade, banco$escolaridade != "pós-graduação" && banco$renda >= 2000)
    
    * Vamos ordenar nossos dados a partir de uma variável?
    
    order(renda)
    order(renda, decreasing = "T")

    positions <- order(banco$renda)
    banco[positions, ]
    
    

# Listas

    Vetores (array de uma dimensão): pode ter valores numeric, character ou lógico. 
    Os elementos dentro de um vetor sempre tem a mesma classe. 
    Matrizes (array de duas dimensões): pode ter valores numeric, character ou lógico. 
    Os elementos dentro de uma matriz tem sempre a mesma classe/tipo.
    Data frames (objeto bi-dimensional): pode ter valores numéricos, character ou lógico. 
    Em uma mesma coluna todos os elemtenos tem o mesmo tipo de dado, 
    mas colunas diferentes podem ter tipos diferentes de dados. 

    Listas: aceitam diferentes tipos de dado, de diferentes tamanhos, características. 
    Pode armazenar objetos de forma ordenada, que podem ser matrizes, vetores, 
    dataframes ou outras listas. 
    Não é necessário que estejam ligados de alguma forma. É um super data!
    
    
    