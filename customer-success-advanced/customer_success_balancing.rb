require_relative('./customer_success_balancing_tests')
require_relative('./analytics_tools/analyze_matches')

class CustomerSuccessBalancing
  def initialize(customer_success, customers, customer_success_away)
    @customer_success = available_css(customer_success, customer_success_away)
    @customers = customers
  end

  def unmatched_customers
    # analyzes the number and score of unmatched customers
    NoMatches.new(@customer_success, @customers).unmatched_customers_analysis
  end

  def unmatched_average_score
    NoMatches.new(@customer_success, @customers).average_score
  end

  def recommended_cs_score
    NoMatches.new(@customer_success, @customers).recommended_css_score
  end

  private

  def available_css(customer_success, customer_success_away)
    # filters out the customer_success who are currently away and sorts by score
    customer_success.reject { |cs| customer_success_away.include?(cs[:id]) }
  end
end
