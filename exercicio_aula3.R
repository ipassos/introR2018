library(genderBR)
library(stringr)
library(purrr)
library(tidyr)
library(ggplot2)

data <- read.csv("/home/ipassos/R/Aulas/banco_teste_aulaR.csv", header = T, sep = ",")

data_new <- data.frame(data)

new <- data.frame(sapply(data[c(2,5,7,8)], iconv, to = "ASCII//TRANSLIT"))
data_new$estado <- new$estado
data_new$raca <- new$raca
data_new$escolaridade <- new$escolaridade
data_new$cidade <- new$cidade

data_new$renda_recode <- cut(data_new$renda, 
                             breaks = c(0,1000,3000,5000,10000, Inf), labels = c("baixa", "não tão baixa", "média", "alta", "muito alta"), right = F)

hist(data_new$idade)
hist(data_new$renda)
plot(data_new$renda, data_new$idade)
boxplot(data_new$idade)
boxplot(matrixPaises[,1])
barplot(matrixPaises, beside = T)
dotchart(matrixPaises)

spineplot(data_new$renda_recode, data_new$raca)
plot(data_new$renda_recode, data_new$raca)

ggplot(data_new, aes(x=renda_recode)) + geom_bar()



## criação da lista da renda
renda <- new$renda
#tabela frequência
freq_renda <- table(renda)
# frequencia relativa
freq_rlt <- prop.table(freq_renda)
# porcentagem frequencia relativa
freq_por <- 100 * freq_rlt
#Adicionar total
freq_renda <- c(freq_renda, sum(freq_renda))
freq_rlt <- c(freq_rlt, sum(freq_rlt))
freq_por <- c(freq_por, sum(freq_por))
names(freq_renda)[74] <- "Total"
names(freq_rlt)[74] <- "Total"
names(freq_por)[74] <- "Total"

tabela_final <- cbind(freq_renda, 
                        freq_rlt = round(freq_rlt, digits = 2),
                        freq_por = round(freq_por, digits = 2))

colnames(tabela_final) <- c("Frequência", "Frequência Relativa", "%")

xtabs(~raca+sexo+escolaridade, data = data_new)

CrossTable(data_new$sexo, data_new$raca)

nomes <- read.csv("/home/ipassos/R/banco_nomes.csv", header = T, sep = ",")


#selecionar apenas alguma colunas
#dados2 <- data.frame(CARTAO = dados$CARTAO, MEDIA = dados$MEDIA, CONCEITO = dados$CONC, TEMPO = dados$TEMPO)
#write.csv2(dados2, '/home/ipassos/Documents/Bacharelado Estatistica/1º semestre/Introdução a Pacotes Estatísticos/alunos_alt.csv', row.names = F )
