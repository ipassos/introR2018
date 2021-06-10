#meu primeiro dataframe

ind <- c("Joao", "Maria", "Vitor", "Igor", "Lizandro", "Guilherme", "Arina", "Julio")
raca <- c("preta", "amarela", "indigena", "parda", "branca", "preta", "parda", "parda")
sexo <- c("fem", "mas", "fem", "mas", "fem", "mas", "fem", "mas")
idade <- c(23, 45, 36, 21, 49, 48, 66, 87)
escol <- c("sup", "med", "fund", "pos", "fund", "sup", "med", "med")
renda <- c(1210, 5000, 4782, 500, 2500, 4152, 6052, 8000)
estado <- c("solt", "cas", "viuvo", "div", "solt", "cas", "viuvo", "div")

banco <- data.frame(ind, raca, sexo, idade, escol, renda, estado)

head(banco)
tail(banco)
summary(banco)
str(banco)

banco[5, 1]
banco[4, 4]
banco[4]

banco[1:5, "sexo"]
banco[4, 2:5]
banco[4, c(1,3,5)]

subset(banco, banco$sexo == "fem")
subset(banco, banco$raca == "branca" & banco$sexo == "mas")

order(banco$idade, decreasing = T)

positions <- order(banco$idade)
banco_oridade <- banco[order(banco$idade),]

plot(banco$idade, xlab = "individuos", ylab = "idade",
     main = "Idades dos individuos do meu banco", 
     sub = "Da minha pesquisa de campo")

idade <- banco$idade
idade

banco_oridade$idade <- idade + 10

banco <- cbind(banco, banco_oridade$idade)
