class Receipt_products < ApplicationRecord
    belongs_to :receipt
    belongs_to :product
end