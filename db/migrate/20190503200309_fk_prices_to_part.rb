class FkPricesToPart < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :prices, :parts, column: :part, primary_key: :id
  end
end
