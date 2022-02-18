class Part < ApplicationRecord
    has_many :Price
    has_many :OrderDetail
    validates :description, length:{in: 10..200, too_long:"Sólo se permite %{count} caracteres como máximo"}
end
