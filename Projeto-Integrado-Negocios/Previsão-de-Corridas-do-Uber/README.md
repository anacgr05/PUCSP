# <img src= "https://github.com/anacgr05/PUCSP/assets/151938722/c09815cf-1da3-40a1-9af4-1444264dad69" width="50"/> Previsão de corrida do Uber

## Objetivo
Análise de dados e aplicação de técnicas de regressão para a previsão de preços das corridas do Uber

## Etapas do Projeto
- Análise e Transformações dos dados das colunas categóticas e numéricas do Dataset de corridas do Uber no Perú.
- Correlação entre as colunas.
- Testes com 4 algoritmos de regressão: Regressão Linear, Decision Tree, Random Forest, Gradient Boosting.
- Desenvolvimento do aplicativo utilizando o streemlit com o algoritmo que possuiu melhor resultado.

## Conclusão
A partir dos resultados de R² e Erro quadrático médio e absoluto, concluimos que o algoritmo Gradient Boosting foi o que melhor preveu os valores das corridas. 

Assim utilizamos ele para a aplicação : https://previsaoprecouber.streamlit.app/
