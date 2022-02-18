class FkPricesToVendor < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :prices, :vendors, column: :vendor_id, primary_key: :id
  end
end
