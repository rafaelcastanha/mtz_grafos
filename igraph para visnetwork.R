# Utilizando a biblioteca "visNetwork"

install.packages('visNetwork')
library(visNetwork)

# Coventer objeto igraph para objeto VIS

vis_inc <- toVisNetworkData(g_inc) #supondo que vc já construiu o objeto igraph anteriormente!

vis_sim <- toVisNetworkData(g_sim) #supondo que vc já construiu o objeto igraph anteriormente!

vis_co <- toVisNetworkData(g_co) #supondo que vc já construiu o objeto igraph anteriormente!

#Construindo grafos

# 1º - identificações dos nós

node_inc<-data.frame("id"=vis_inc$nodes$id, "label"=vis_inc$nodes$label)

node_sim<-data.frame("id"=vis_sim$nodes$id, "label"=vis_sim$nodes$label)

node_co<-data.frame("id"=vis_co$nodes$id, "label"=vis_co$nodes$label)

# 2º identificando ligações

#ligações FROM -> TO - mtz incidencia

links_inc<-as.data.frame(vis_inc$edges) 

#ligações mtz adjacencia

links_sim<-as.data.frame(vis_sim$edges) 

links_co<-as.data.frame(vis_co$edges) 


#Atribuindo pesos

colnames(links_inc)[3]<-'width'

colnames(links_sim)[3]<-'width'

colnames(links_co)[3]<-'width'


#plot Matriz Incidencia

visNetwork(node_inc, links_inc) %>% 
  visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE) %>%
  visEdges(arrows = "to") %>%  #somente se for direcionado!
  visIgraphLayout(layout ="layout_with_fr")


#plot Matriz Similaridade

visNetwork(node_sim, links_sim) %>% 
  visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE) %>%
  visIgraphLayout(layout ="layout_with_fr")

#plot Matriz Coocorrencia

visNetwork(node_co, links_co) %>% 
  visOptions(nodesIdSelection = TRUE) %>%
  visIgraphLayout(layout ="layout_with_fr")
