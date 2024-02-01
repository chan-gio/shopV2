# app/models/product.rb
class Product < ApplicationRecord
    # ... các mối quan hệ và validations khác ...
    has_many :product_variants
    has_many :receipt_products
    has_many :receipts, through: :receipt_products
    def sizes
      Product.where(name: name).pluck(:size).uniq
    end
  
    def colors
      Product.where(name: name).pluck(:color).uniq
    end

  end
  