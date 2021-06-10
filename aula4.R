library("genderBR")
library("gmodels")

data <- read.csv("C:/Users/Aluno/Desktop/banco_teste_aulaR.csv", header = T, sep = ",")

data2 <- data

new <- data.frame(sapply(data2[,c(2,5,7,8)], iconv, to = "ASCII//TRANSLIT"))

data2$raca <- new$raca
data2$estado <- new$estado
data2$escolaridade <- new$escolaridade
data2$cidade <- new$cidade

data2[,c(2,5,7,8)] <- new[,1:4]

data2$raca <- tolower(data2$raca)
data2$escolaridade <- tolower(data2$escolaridade)
data2$sexo <- tolower(data2$sexo)
data2$cidade <- tolower(data2$cidade)
data2$estado <- tolower(data2$estado)

data2$renda_recode <- cut(data2$renda, breaks = c(0,1000,2500,5000,10000,Inf), 
    labels = c("De 0 a 1000", "1000 - 2500", "2500 - 5000", "5000 - 10000", "Mais de 10000" ))

hist(data2$idade)
hist(data2$renda)
plot(data2$renda, data2$idade)
boxplot(data2$renda)

spineplot(data2$idade, data2$renda_recode)

table(data2$renda_recode)
prop.table(data2)

xtabs(~renda_recode, data = data2)

raca_genero <- CrossTable(data2$sexo, data2$raca)

data_novo <- data.frame( = dados2$coluna, )
write.csv(banco, "C:/Users/Aluno/Desktop/bancoanalisado.csv")





