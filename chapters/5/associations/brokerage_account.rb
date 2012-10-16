class BrokerageAccount
  attr_reader :customer

  def initialize(account_number, customer, investments)
    @customer = customer
    @investments = investments
  end

  def get_investment(stock_symbol)
    @investments[stock_symbol]
  end
end