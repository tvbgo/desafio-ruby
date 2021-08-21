require 'minitest/autorun'
require 'timeout'
require_relative('./customer_success_balancing')

class CustomerSuccessBalancingTests < Minitest::Test
  def test_unmatched_customers_analysis
    balancer = CustomerSuccessBalancing.new(array_to_map([1, 2, 3, 4, 5, 6]), array_to_map([10, 10, 10, 20, 20, 30, 30, 30, 20, 60]), [])
    assert_equal 10, balancer.unmatched_customers
   end

  def test_average_score
    ## Retorne a media do :score de customers que ficaram sem atendimento
    balancer = CustomerSuccessBalancing.new(array_to_map([1, 2, 3, 4, 5, 6]), array_to_map([10, 10, 10, 20, 20, 30, 30, 12, 45, 15, 85, 16, 30, 20, 60]), [])
    assert_equal 27, balancer.unmatched_average_score
  end

  def test_recommended_css_score
    ## Retorne uma recomendacao de :score para contratacao
    ## para atender no minimo 90% dos clientes que ficaram sem atendimento
    balancer = CustomerSuccessBalancing.new(array_to_map([1, 2, 3, 4, 5, 6]), array_to_map([10, 10, 10, 20, 20, 30, 30, 30, 20, 60, 90, 15, 25, 35, 65, 85, 70]), [])
    assert_equal 65, balancer.recommended_cs_score
  end

  def array_to_map(arr)
    out = []
    arr.each_with_index { |score, index| out.push({ id: index + 1, score: score }) }
    out
  end
end
