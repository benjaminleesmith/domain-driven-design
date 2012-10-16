class BrokerageAccount < ActiveRecord::Base
  attr_accessible :account_number, :customer_ssn

  def get_customer
    Customer.find_by_ssn(self.customer_ssn)
  end

  def get_investment(stock_symbol)
    Investment.find_by_account_number_and_stock_symbol(self.account_number, stock_symbol)
  end
end
