#MATRIZES

#Construindo matrizes

matriz_1 <- matrix(1:10) # função padrão

matriz_1

matriz_2 <- matrix(data = 1:10, nrow = 5, ncol = 2)  # Estabelecendo linhas e colunas

matriz_2

matriz_3 <- matrix(data = 1:10, nrow = 5, ncol = 2, byrow = TRUE) # Organização por linhas

matriz_3


# criando matrizes a partir de vetores utilizando rbind() e cbind()

vetor_1 <- c(1, 3, 5, 7)    # criando vetor_1

vetor_2 <- c(9, 11, 13, 15) # criando vetor_2

matriz_4 <- rbind(vetor_1, vetor_2) # juntando vetores com linhas

matriz_4

matriz_5 <- cbind(vetor_1, vetor_2) # juntando vetores com colunas

matriz_5

matriz_6 <-as.matrix(vetor_1) #transformando um vetor em matriz

matriz_6

#Altera elemento

matriz_2[1,2]<-100 #substitui um elemento: Ex: linha 1 e coluna 2 recebe 100

matriz_2

matriz_2[matriz_2>8]<-0 #troca diversos elementos sob uma condição

matriz_2


#OPERAÇÕES ENTRE MATRIZES

#soma entre matrizes

matriz_2 + matriz_3

#subtração

matriz_2 - matriz_3

#Multpicação por escalar

5*matriz_2


#Multiplicação entre matrizes

matriz_2 %*% matriz_4

#transpor matriz

t(matriz_2)

#determinante

matriz_7 <- matrix(data = 1:9, nrow = 3, ncol = 3)

matriz_7

det(matriz_7)

# dimensao da matriz

dim(matriz_7)

# num de colunas

ncol(matriz_7)

# num de linhas

nrow(matriz_7)

# diagonal

diag(matriz_7)

#manipulando a diagonal

diag(matriz_7)<-0 #insere ZERO na diagonal da matriz

#Juntando matrizes

# unindo matrizes pelas linhas

rbind(matriz_2, matriz_3)

# unindo matrizes pelas colunas

cbind(matriz_2, matriz_3)
