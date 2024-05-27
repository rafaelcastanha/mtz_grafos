#Lendo Arquivos

m<-read.table(file.choose(), sep="\t", header = TRUE, row.names = 1)

m<-as.matrix(m) #convertendo dataframe em matriz e visualizando matriz

m

#Operando Matrizes

s <- m %*% t(m) #Matriz similaridade

s

diag(s)<-0 #diagonal igual a zero

s

c <- t(m) %*% m #matriz coocorrencia

c

diag(c)<-0 #diagonal igual a zero

c

#Visualização do grafo

#Instale se necessário com: install.packages('igraph')
#library('igraph')

grafo_inc<-graph_from_incidence_matrix(m, directed = T, mode="out", weighted = T) 

grafo_sim <- graph_from_adjacency_matrix(s, weighted = T, mode = "undirected")

grafo_co <- graph_from_adjacency_matrix(c, weighted = T, mode = "undirected")

#Plots

plot(grafo_inc, edge.width=E(grafo_inc)$weight)

plot(grafo_sim, edge.width=E(grafo_sim)$weight)

plot(grafo_co, edge.width=E(grafo_co)$weight)

