#metricas Topológicas

V(g_sim) #identifica os vértices

length(V(g_sim)) #contagem do número de vértices

E(g_sim) #identifica as ligações

ecount(g_sim) #contagem do número de arestas

degree(g_sim) #Graus de vértice

mean(degree(g_sim)) #Grau médio

E(g_sim)$weight #pesos do grafo

mean(E(g_sim)$weight) #força de conectividade média

edge_density(g_co, loops = FALSE) #Densidade da rede

