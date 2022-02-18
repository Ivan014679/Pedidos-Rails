class Price < ApplicationRecord
    #belongs_to :Vendor
    #belongs_to :Part
    validates :vendor_id, presence: true
    validates :part_id, presence: true

    attr_accessor :vendor_name, :part_description, :quantity
end
