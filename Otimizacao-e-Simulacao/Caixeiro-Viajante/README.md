# <img src = "https://github.com/anacgr05/PUCSP/assets/151938722/9234e60a-96fc-4c07-b5a5-a76fd8173f94" width ="50"/> Caixeiro Viajante: Roteamento de veículos em São Paulo 
## Objetivo
Encontre a melhor rota, começando pela capital e retornando até ela no final (problema do caixeiro viajante), sem repetição de cidades.

## Etapas do Projeto
- Estruturação do Dataset
  
  Utilizamos o arquivo JSON com todos os dados geográficos de todos os municípios de São Paulo.
  
  Para calcular a distância utilizamos a fórmula Haversine.
  
  E construimos a matriz de distância sobre todas as cidades.
  
- Limpeza dos dados
  
  Remoção das cidades repetidas (origem igual ao destino).
  
  Remoção de valores duplicados.
  
- Modelagem:
  
  Testamos diferentes algoritmos para encontrar o que alcançava melhor resultado, entre eles o Algoritmo Guloso, Genético, OrTools, Christofides e Busca Tabu.

## Conclusão
Tivemos alguns obstáculos, como a matriz de distância real e os modelos de rede neural com treinamentos muios longos.

O melhor resultado obtido foi o utilizando o algoritmo OrTools, com a distância total de 10.279km passando por todos os munícipios de São Paulo

## Mapas do código
##### Ortools
![image](https://github.com/anacgr05/PUCSP/assets/151938722/464186ab-0a7c-4068-a6a5-1f8b2bbf9eef)
##### Guloso
![image](https://github.com/anacgr05/PUCSP/assets/151938722/5f5206c1-d416-4538-8278-d4e50ed7dc07)
##### Genético
![image](https://github.com/anacgr05/PUCSP/assets/151938722/437fe6ea-4517-41b7-bdd6-9dbbe8f8765e)
##### Christofides
![image](https://github.com/anacgr05/PUCSP/assets/151938722/e2346f51-48e0-4741-8872-6e33c2b2f0e7)
##### Busca Tabu
![image](https://github.com/anacgr05/PUCSP/assets/151938722/4d629abb-f7ff-4deb-8082-490a1b667a6d)


