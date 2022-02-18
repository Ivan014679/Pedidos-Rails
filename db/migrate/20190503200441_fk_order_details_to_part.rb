class FkOrderDetailsToPart < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :order_details, :parts, column: :part, primary_key: :id
  end
end
