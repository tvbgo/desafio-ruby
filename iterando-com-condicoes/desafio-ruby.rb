## DESAFIO 1:

### Ruby é uma linguagem que tenta aproximar sua syntax a compreensão da lingua inglesa. 

# Os métodos nativos de ruby possuem nome descritivos do seu uso:  select, reject, each, map, sort, sort_by 

# Iterações facilitam a nossa vida e permitem automatizar processos repetitivos. Hoje nós vamos praticar a implementação de iterações.
    
# Documentação para ajudar a implementar os métodos. 
    
# https://ruby-doc.org/core-2.5.3/Array.html 

## PARA TESTAR A SUA SOLUÇAO COLE O SEGUINTE COMANDO NO TERMINAL: ruby test-desafio-ruby.rb



### Implemente a lógica para retornar os valores corretos para cada método

class RubyChallenge

  def has_six_char(words)
    ## Retorne uma array contendo apenas palavras que contenham exatamente 6 characteres 
  end

  def normalize_string(words)
    ## Adicione a letra "o" no final de cada palavra da array 
  end


  def no_alphanumeric(words)
    ## Retorne uma array contendo apenas as strings que NÂO contenham characteres alphanumericos
  end

  def duplicate_values(values)
    ## Retorne uma array contendo apenas os valores que estão duplicados(valores triplicados, quadruplicados, etc.. NÃO devem ser retornados)
  end

  def count_the_values(values)
    ## Retorne o número de vezes que a palavra "ruby" aparece na array, DEVE-SE contar TODAS as ocorrências, independentemente de maíuscula/minúscula!
  end

end
