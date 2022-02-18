class PurchaseOrder < ApplicationRecord
    has_many :OrderDetail
    #belongs_to :Vendor

    attr_accessor :vendor_name, :total
end
