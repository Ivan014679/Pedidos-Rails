class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :order
      t.integer :part
      t.integer :quantity
      t.integer :unit_price

      t.timestamps
    end
  end
end
