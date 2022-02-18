class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.integer :vendor_id
      t.integer :part_id
      t.string :catalog_no
      t.integer :price

      t.timestamps
    end
  end
end
