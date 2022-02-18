class Vendor < ApplicationRecord
    has_many :Price
    has_many :PurchaseOrder
    validates :name, presence: true, length:{in: 10..100, too_long:"Sólo se permite %{count} caracteres como máximo"}

    attr_accessor :city_name, :region_name
end
