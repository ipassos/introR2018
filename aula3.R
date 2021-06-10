individuo <- c("00001", "00002", "00003", "00004", "00005", "00006", "00007", "00008")
raca <- c("Branca", "Negra", "Negra", "Parda", "Branca", "Negra", "Indígena", "Indígena")
sexo <- c("F", "M", "M", "F", "M", "F", "F", "F")
idade <- c(20, 45, 65, 23, 38, 18, 48, 89)
escolaridade <- c("superior", "médio", "técnico", "superior", "pós-graduação", "fundamental", "médio", "pós-graduação")
renda <- c(2000, 10000, 3900, 4500, 15000, 900, 2500, 20000)
estado <- c("solteiro", "casado", "viúvo", "solteiro", "solteiro", "casado", "casado", "separado")

banco <- data.frame(individuo, raca, sexo, idade, escolaridade, renda, estado)

head(banco)
tail(banco)
str(banco) #structure
summary(banco)

banco[4, 5]
banco[4, ]
banco[, 5]

banco[1:5, "sexo"]
banco[1, 1:5]
vector_sexo <- banco$sexo

banco[vector_sexo == "F", "individuo"] 
banco[vector_sexo == "F", ]


subset(banco, banco$sexo == "F")
subset(banco, banco$idade < 30)
subset(banco, banco$idade < 50 && banco$raca != "negra")
subset(banco$idade, banco$escolaridade != "pós-graduação" && banco$renda >= 2000)

order(renda)
order(renda, decreasing = "T")

positions <- order(banco$renda)
banco[positions, ]


## Listas

