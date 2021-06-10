library("wordcloud")
library("tm")
library("RColorBrewer")

vetor <- data2$cidade
texto <- Corpus(VectorSource(vetor))

#texto <- tm_map(texto, stripWhitespace)
texto <- tm_map(texto, tolower)
texto <- tm_map(texto, removeWords, stopwords("portuguese"))
texto <- tm_map(texto, stemDocument)

wordcloud(texto, scale = c(4,1), max.words = 200, random.order = F, rot.per = 0.35, use.r.layout = F, colors = brewer.pal(8, "Dark2"))


