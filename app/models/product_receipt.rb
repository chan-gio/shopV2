class ProductReceipt < ApplicationRecord
    belongs_to :product
    belongs_to :receipt
end
