class BrokerageAccount
  attr_reader :customer, :investments

  def initialize(account_number, customer, investments)
    @customer = customer
    @investments = investments
  end
end