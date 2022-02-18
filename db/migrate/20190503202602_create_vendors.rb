class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.string :region

      t.timestamps
    end
  end
end
