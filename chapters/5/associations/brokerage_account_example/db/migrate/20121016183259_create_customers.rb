class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :ssn
      t.string :name

      t.timestamps
    end
  end
end
