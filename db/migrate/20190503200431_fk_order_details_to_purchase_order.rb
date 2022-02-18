class FkOrderDetailsToPurchaseOrder < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :order_details, :purchase_orders, column: :order, primary_key: :id
  end
end
