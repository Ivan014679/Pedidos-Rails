class FkPurchaseOrderToVendor < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :purchase_orders, :vendors, column: :vendor, primary_key: :id
  end
end
