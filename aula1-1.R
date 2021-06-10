eua <- c(-1000, 1200, -2500, 8794, 1547)
brasil <- c(5000, -5467, 6741, -5147, -5411)
argentina <- c(-2500, 5147, -2418, 8964, 5371)

nomes <- c("Janeiro", "Fevereiro", "Março", "Abril", "Maio")
names(eua) <- nomes

rev(eua)

c <- seq(10.5, 30)
class(c)

rep(5, 3)
rep(1:5, 3)
rep(1:5, each = 3)

sort(c)

c <- c()

mean(c)

rnorm(c, mean = 20, sd = 1)

matrix(1:30, byrow = TRUE, nrow = 10)
matrix(1:30, byrow = FALSE, nrow = 10)

paises <- c(eua, brasil, argentina)
matrixPaises <- matrix(paises, byrow = TRUE, nrow = 3)
colnames(matrixPaises) <- nomes
rownames(matrixPaises) <- c("EUA", "Brasil", "Argentina")

genero <- c("M", "F", "M", "F")
factor_genero <- factor(genero)

vetor_satisf <- c("Bom", "Ruim", "Médio", "Bom", "Péssimo")
factor_satisf <- factor(vetor_satisf, order = TRUE, levels = c("Péssimo", "Ruim", "Médio", "Bom"))

