class RubyChallenge

  def has_six_char(words)
    ## Retorne uma array contendo apenas palavras que contenham exatamente 6 characteres 
    words.select do |word|
      word.length == 6
    end
  end

  def normalize_string(words)
    ## Adicione a letra "o" no final de cada palavra da array
    words.map do |word|
      "#{word}o" 
    end
  end


  def no_alphanumeric(words)
    ## Retorne uma array contendo apenas as strings que NÂO contenham characteres alphanumericos
    words.reject do |word|
      word.match?(/\w/)   
    end
  end

  def duplicate_values(values)
    ## Retorne uma array contendo apenas os valores que estão duplicados(valores triplicados, quadruplicados, etc.. NÃO devem ser retornados)
    grouping =  values.group_by { |v| v }
    dups = []
    grouping.map do |k,v|
      dups << k if v.length == 2
    end
    dups
  end

  def count_the_values(values)
    ## Retorne o número de vezes que a palavra "ruby" aparece na array, DEVE-SE contar TODAS as ocorrências, independentemente de maíuscula/minúscula!
    values.count { |v| v.downcase == 'ruby'}
  end

end