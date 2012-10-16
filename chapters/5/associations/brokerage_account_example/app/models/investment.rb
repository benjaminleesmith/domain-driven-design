class Investment < ActiveRecord::Base
  attr_accessible :account_number, :amount, :stock_symbol
end
