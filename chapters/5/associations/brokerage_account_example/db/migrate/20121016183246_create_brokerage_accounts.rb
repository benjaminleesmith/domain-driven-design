class CreateBrokerageAccounts < ActiveRecord::Migration
  def change
    create_table :brokerage_accounts do |t|
      t.string :account_number
      t.string :customer_ssn

      t.timestamps
    end
  end
end
