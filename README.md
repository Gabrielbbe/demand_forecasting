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

Por mais que tenhamos ingredientes que possuem comportamentos e demandas diferentes ao tirar uma média entre o RSME dos modelos com menor RSME e o RSME do modelo média móvel (com lag = 3), juntamente com o desvio padrão dessas diferenças para todos os modelos que é igual a 1, podemos ter uma noção de como está performando os modelos de nosso experimento.
 De acordo com os resultados temos uma melhora entre os valores preditos com os modelos que escolhemos em nosso experimento em relação com a média móvel, na média temos uma redução de 12,5% nos valores do RSME, o que indica que as previsões feitas pelos modelos do nosso experimento erram menos. Além disso com os modelos de nosso experimentos tendemos a errar um pouco mais de tal forma que subestimamos a demanda do ingrediente, ou seja, estimamos uma quantidade um pouco menor do que o real valor, não temos uma diferença muito grande em relação a essa métrica quando comparamos com a mesma métrica no caso da média móvel, tendo um aumento de 9% nessa métrica com os modelos do nosso experimento, neste caso teria de ser avaliado o real custo do trade-off de errar a estimativa para mais ou menos e então escolher o modelo de maneira a minimizar os custos em um caso real teria de ser avaliado individualmente esse custo para cada ingrediente, neste dataset não temos o preço de cada ingrediente individualmente então não podemos calcular esse trade-off.

## Gerenciamento

 Para gerenciar os experimentos e os modelos foi utilizado o MLFlow que é uma ferramenta de gerenciamento de modelos e experimentos, além disso ele possui uma API para acessar os modelos que são treinados e salvos dentro do MLFlow tornando possível acessar os modelos e os experimentos para coletar informações como as métricas de avaliação dos modelos para cada modelo e experimento, acessar o modelo treinado para fazer previsões em outros datasets, acessar o tempo que levou para treinar os modelos entre outras coisas. 

 colocar img mlflow
