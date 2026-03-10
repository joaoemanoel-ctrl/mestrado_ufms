getwd()# Obtem o diretório de trabalho
ts + tab > Snipped # Registra o dia e hora do código  

# Mon Mar  9 09:37:45 2026 ------------------------------


#' Título: Capítulo 04 - Introdução ao R

#Exercícios
# 4.1 Use o R para verificar o resultado da operação 
7+7/7+7*7-7
# = 50


# 4.2 Verifique através do R se 3x2³ é maior que 2x3².
3*2^3 > 2*3^2
# = TRUE


#4.3 Crie dois objetos (qualquer nome) com os valores 100 e 300. Multiplique esses objetos (funçãoprod()) e atribuam ao objeto mult. Faça o logaritmo natural (função log()) do objeto mult e atribuam ao objeto ln.
obj1 <-100
obj2 <-300
obj1*obj2 
multi<-prod(obj1,obj2)
log(multi)
In <- log(multi)


#4.4 Quantos pacotes existem no CRAN nesse momento? Execute essa combinação no Console: nrow(available.packages(repos = "http://cran.r-project.org")).
nrow(available.packages(repos="http://cran.r-project.org"))

     
# 4.5 Instale o pacote tidyverse do CRAN.
install.packages("tidyverse")
library(tidyverse)


#4.6 Escolha números para jogar na mega-sena usando o R, nomeando o objeto como mega. Lembrando: são 6 valores de 1 a 60 e atribuam a um objeto.
sequence(1:60)
mega<- sample(x = 1:60, size = 6, replace = FALSE)
mega


#4.7 Crie um fator chamado tr, com dois níveis (“cont” e “trat”) para descrever 30 locais de amostragem, 15 de cada tratamento. O fator deve ser dessa forma cont, cont, cont, ...., cont, trat, trat, ...., trat.
help("repeat")
tr <-factor(c (rep("cont", each = 15), rep("trat", each = 15)))
tr


#4.8 Crie uma matriz chamada ma, resultante da disposição de um vetor composto por 300 valores aleatórios entre 0 e 10. A matriz deve conter 30 linhas e ser disposta por colunas.
ve<-0:10
ma_row <- matrix(data = ve, nrow = 30, ncol = 10, byrow = TRUE)
#OU
ma<- matrix(sample(0:10, 300, replace = TRUE), nrow=30, byrow=FALSE)


#4.9 Crie um data frame chamado df, resultante da composição desses vetores:
# id: 1:30
id <- 1:30
# sp: sp01, sp02, ..., sp29, sp30
sp <-c("sp1","sp2", "sp3", "sp4", "sp5", "sp6", "sp7", "sp8", "sp9", "sp10", "sp11", "sp12", "sp13", "sp14", "sp15", "sp16", "sp17", "sp18", "sp19", "sp20", "sp21", "sp22", "sp23","sp24", "sp25", "sp26","sp27", "sp28","sp29","sp30") 
#Ou
sp2 <- paste("sp", 1:30, sep = "")
# ab: 30 valores aleatórios entre 0 a 5
ab <- sample(x=0:5, size= 30, rep=TRUE)
df <-data.frame(id, sp2, ab)

#################

# Correção em aula
df <- data_frame(id=1:30, sp= c(paste0("sp0",1:9), paste0("sp", 10:30)), ab= sample(0:5, 30, rep=TRUE))

# Mon Mar  9 14:59:05 2026 ------------------------------

# 4.10 Crie uma lista com os objetos criados anteriormente: mega, tr, ma e df.
?list
li <-list(mega, tr, ma_row, df)
li
li[[1]]

# 4.11 Selecione os elementos ímpares do objeto tr e atribua ao objeto tr_impar.

tr
tr_impar <-tr[seq(1, length(tr), by = 2)]
tr_impar
#Correção sala 
tr
tr_impar2 <-tr[seq(1, 29, 2)]
tr_impar2              
              
# 4.12 Selecione as linhas com ids pares do objeto df e atribua ao objeto df_ids_par.
df
df_ids_par <- df[seq(2,length(df$id), by=2),]

# 4.13 Faça uma amostragem de 10 linhas do objeto df e atribua ao objeto df_amos10. Use a função set.seed() para fixar a amostragem.
df
help(set.seed)
set.seed(42)
df_amos10 <- df[sample(nrow(df), 10),]
df_amos10

# 4.14 Amostre 10 linhas do objeto ma, mas utilizando as linhas amostradas do df_amos10 e atribua ao objeto ma_amos10.
#RESPOSTA EM SALA PELO PROF
ma_amos10 <- ma[df_amos10$id,]
ma_amos10

# 4.15 Una as colunas dos objetos df_amos10 e ma_amos10 e atribua ao objeto dados_amos10.
#RESPOSTA EM SALA PELO PROF
dados_amos10 <- cbind(df_amos10, ma_amos10)
dados_amos10
