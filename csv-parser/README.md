## CSV Parser

Nesse desafio você irá praticar com ruby uma necessidade comum no mundo da programação: Analisar e alterar dados em arquivos CSV

Você possui um CSV muitos dados inválidos e é sua responsabilidade limpar esses dados antes de importar eles para o RD Station.

Nossa equipe identificou que os valores das colunas Estado e Cidade possuem characteres inválidos e informações adicionais incorretas/desnecessárias

por exemplo: Estado: "*Rio de Janeiro*: Casimiro de Abreu." deve se tornar => "Rio de Janeiro"
Cidade: "Casimiro de Abreu/RJ" deve se tornar => "Casimiro de Abreu"

Para te ajudar nesse desafio: https://ruby-doc.org/stdlib-2.6.1/libdoc/csv/rdoc/CSV.html 

IMPORTANTE: VOCÊ NÃO DEVE ALTERAR O CSV ORIGINAL, E SIM CRIAR UM NOVO PARA RECEBER O SEU RETORNO!!