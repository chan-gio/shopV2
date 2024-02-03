class ProductReceiptController < ApplicationController
    skip_before_action :verify_authenticity_token

    def save_data
        data = JSON.parse(request.body.read)
        id_values = []
        data.each do |item|
            id_values << { 'id' => item['id'], 'quantity' => item['quantity'] }
        end
        
        receipt_id = Receipt.last.id
        
        id_values.each do |product_data|
          product_id = Product.find(product_data['id'])
          quantity = product_data['quantity'].to_i
        
          product_receipt = ProductReceipt.create(product_id: product_id.id, receipt_id: receipt_id, quantity: quantity)
        end       

    end
    def product_receipt_params
        # Assuming you have a Receipt model with the necessary attributes
        params.permit(:product_id, :receipt_id, :quantity)
    end
  end
  