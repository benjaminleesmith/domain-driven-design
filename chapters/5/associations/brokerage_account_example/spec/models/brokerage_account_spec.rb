require "spec_helper"

describe BrokerageAccount do
  describe "#get_customer" do
    it "finds the customer for the account" do
      customer = Customer.create(ssn: "123121234", name: "Bob Jones")
      brokerage_account = BrokerageAccount.create(customer_ssn: "123121234")

      brokerage_account.get_customer.should == customer
    end
  end

  describe "#get_investments" do
    it "finds the investments for the account and stock symbol" do
      brokerage_account = BrokerageAccount.create(account_number: "1234")
      investment_1 = Investment.create(account_number: "1234", stock_symbol: "ASDF")
      Investment.create(account_number: "1234", stock_symbol: "QWER")

      brokerage_account.get_investment("ASDF").should == investment_1
    end
  end
end