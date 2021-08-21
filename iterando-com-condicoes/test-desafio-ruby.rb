require "minitest/autorun"
require './desafio-ruby.rb'


class RubyChallengeTests < Minitest::Test

  def setup
    @rubychallenge = RubyChallenge.new
  end

  def test_that_array_has_six_char_words
    palavras_array = "Não olho no olho hoje palavras aleatórias para encheres de palavras hehehehe sei se existo ou se sou apenas um sonho ? Me usam para marcar pessoas ou acontecimentos, mas se eu tiver um espaço em branco na minha frente quero ver me fazer funcionar! Ache a minha rota! Quem sabe isso não revela algo?".split(" ")
    assert_equal 7, @rubychallenge.has_six_char(palavras_array).length    
  end

  def test_normalize_string
    array = ["nã", "sonh", "espaç", "branc", "quer", "alg"]
    assert_equal ["não", "sonho", "espaço", "branco", "quero", "algo"], @rubychallenge.normalize_string(array)
  end

  def test_no_alphanumeric
    palavras_array = "Não olho no olho hoje palavras aleatórias para encheres de palavras hehehehe sei se existo ou se sou apenas um sonho ? Me usam para marcar pessoas ou acontecimentos , mas se eu tiver um espaço em branco na minha frente quero ver me fazer funcionar ! Ache a minha rota ! Quem sabe isso não revela algo ?".split(" ")
    assert_equal 5, @rubychallenge.no_alphanumeric(palavras_array).length
  end

  def test_duplicate
    array = [1,5,7,9,8,6,2,3,4,1,1,3,5,9,9,9,8,8,10,10,11,154,13,14,15,16,17,18,19,20,2,2,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36]
    assert_equal 3, @rubychallenge.duplicate_values(array).length
  end

  def test_count_values
    array = "Não olho no olho hoje palavras aleatórias para encheres de palavras hehehehe sei se existo ou se sou apenas um sonho ? Me usam Ruby ruby para marcar ruby RUby pessoas ou acontecimentos, mas se eu tiver um ruby rUby ruby espaço em branco ruby ruby ruby rubY na minha frente quero ver me fazer funcionar! Ache ruby Ruby RUbY a minha rota! Quem sabe isso não revela algo?".split(" ")
    assert_equal 14, @rubychallenge.count_the_values(array)
  end

end