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
    it "finds the investments for the account" do
      brokerage_account = BrokerageAccount.create(account_number: "1234")
      investment_1 = Investment.create(account_number: "1234")
      investment_2 = Investment.create(account_number: "1234")
      investment_3 = Investment.create(account_number: "1234")

      brokerage_account.get_investments.should =~ [investment_1, investment_2, investment_3]
    end
  end
end