# Case: Demand Forecasting 

 Nesse projeto fiz a previsão de demanda de ingredientes necessários para realização das atividades de uma rede de fast-food, utilizando técnicas de modelagem estatística, aprendizado de máquina e séries temporais fiz a previsão a demanda de todos os ingredientes individualmente para cada restaurante da rede, foi automatizado um experimento para ajustar alguns modelos que fazem sentido para os dados, e então os modelos foram salvos no MLFlow onde temos uma API para manipular os modelos treinados e verificar o valor das métricas de avaliação dos modelos.

# Parte de negócios

 Não é novidade para ninguém que é muito importante fazer a previsão de demanda em qualquer negócio, no contexto de fast food é extremamente necessário para evitar desperdício e ao mesmo tempo sanar a demanda dos clientes, diminuindo os gastos e maximizando os lucros. Uma curiosidade é que segundo uma pesquisa da Mordor Intelligence em torno de 48% da população brasileira consome fast food pelo menos uma vez na semana¹ e é um dos maiores consumidores de fast food do mundo.

 Temos dados das vendas de alguns restaurantes de uma rede de fast food² com detalhes das compras realizadas nesses restaurantes, além de algumas informações sobre os ingredientes utilizados em cada receita, e seria de grande valor para a rede de fast food fazer a previsão da demanda de cada ingrediente para ter um melhor planejamento, além disso algumas perguntas sobre os dados são pertinentes para o time do fast food, as perguntas são:

 - Qual o prato pedido com mais frequência?
 - Qual o ingrediente utilizado em maior frequência?
 - Quais os ingredientes menos utilizado?
 - Existe diferença no número de vendas entre os restaurante? qual vende mais?

 Também foi informado que atualmente eles utilizam a média móvel (com lag = 3) para prever a demanda de cada ingrediente, seria interessante se fosse possível ajustar outros modelos que tenham uma performance melhor.

 AS perguntas de négócios foram respondidas no [report de negócios](https://github.com/Gabrielbbe/demand_forecasting/blob/main/reports/negocios.pdf)

¹ - https://www.mordorintelligence.com/industry-reports/brazil-foodservice-market \
² - https://www.kaggle.com/datasets/rishitsaraf/fast-food-restaurant-chain?select=sub_recipes.csv

# Preparação dos dados, modelagem e validação 

Para mais detalhes sobre a análise é possível acessar o [report técnico](https://github.com/Gabrielbbe/demand_forecasting/blob/main/reports/demand_forecasting_report_tecnico.pdf) e para mais detalhes sobre o código e os procedimentos utilizados é possível acessar o notebook da análise com a análise completa

Foi separado a frequência de cada ingrediente agrupado de acordo com cada loja e tivemos dados nesse formato de dicionário do python: 

{'StoreNumber' : { 'ingrediente': { 'data' : [datas], 'frequencia': [frequencias] } } }

 Após investigar a existência de tendências, sazonalidade e estacionaridade utilizando testes de hipótese foi escolhido alguns modelos que estão mais de acordo com as características dos dados: 

 - Exponential Smoothing Models que pode ser ajustado em dados que possuem tendências, sazonalidade e pode ser ajustado mesmo se a serie não for estacionária.
 - State Space Models que pode ser ajustado em dados não estacionários e com tendências.
 - Além desses modelos de séries temporais podemos utilizar modelos de aprendizado de máquina como o random forest e xgboost que não fazem nenhum tipo de suposição.

 Então para cada ingrediente em cada loja foi feita a divisão de treino e teste time series k-fold com k = 2.
 Então foi ajustado os modelos Exponential Smoothing Model, State Space Model, random forest e XGBoost.
 Calculado as métrica SME, RSME e a contagem de estimativas abaixo do valor real.
 Então foi escolhido o modelo com menor RSME, como sabemos que antes a rede estava utilizando o modelo média móvel ele também foi ajustado e foi comparada a performance do modelo escolhido com menor RSME e o modelo média móvel com lag = 3 utilizado anteriormente.


