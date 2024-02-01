class Receipt < ApplicationRecord
    has_many :receipt_products
    has_many :products, through: :receipt_products
end
