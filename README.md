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

¹ - https://www.mordorintelligence.com/industry-reports/brazil-foodservice-market \
² - https://www.kaggle.com/datasets/rishitsaraf/fast-food-restaurant-chain?select=sub_recipes.csv
