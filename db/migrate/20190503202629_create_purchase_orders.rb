class CreatePurchaseOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :purchase_orders do |t|
      t.date :date
      t.integer :vendor
      t.string :bill_number

      t.timestamps
    end
  end
end
