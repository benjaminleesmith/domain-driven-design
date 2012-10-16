class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :account_number
      t.string :stock_symbol
      t.integer :amount

      t.timestamps
    end
  end
end
