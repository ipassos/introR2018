matrizpaises[1,2]

matrizpaises[1:3, 2:4]

matrizpaises[4,]

col1 <- matrizpaises[,1]
mean(col1)


mean(matrizpaises[,1])

fac_paises <- factor(c("EUA", "Brasil", "Argentina", "Argentina"))
fac_paises

pesq <- c("F", "M", "F", "M")
fac_pesq <- factor(pesq)
levels(pesq) <- factor(c("Feminino", "Masculino"), ordered = T)

masc <- fac_pesq[2]
fem <- fac_pesq[1]
