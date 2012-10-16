class BrokerageAccount < ActiveRecord::Base
  attr_accessible :account_number, :customer_ssn

  def get_customer
    Customer.find_by_ssn(self.customer_ssn)
  end

  def get_investments
    Investment.find_all_by_account_number(self.account_number)
  end
end
