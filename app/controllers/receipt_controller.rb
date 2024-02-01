class ReceiptController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
  end

  def save_data  
      # Parse the JSON data
      raw_data = request.body.read
      receipt_data = JSON.parse(raw_data)
      Rails.logger.info("Receipt_data: #{receipt_data}")
      # binding.pry
      # Create a new Receipt record and save it to the database
      receipt = Receipt.new(
        cname: receipt_data['name'],
        cphone: receipt_data['phone'],
        cemail: receipt_data['email'],
        caddress: receipt_data['address'],
        note: receipt_data['note'],
        receipt_status: 'Đang giao',
        discount: receipt_data['discount'],
        payment_method: receipt_data['paymentMethod']['name'],
        total: receipt_data['totalPrice']
        )
      if receipt.save
        render json: { status: 'success', message: 'Dữ liệu đã được lưu thành công' }
      else
        render json: { status: 'error', errors: receipt.errors.full_messages }
      end
  end
  

  private

  def receipt_params
    # Assuming you have a Receipt model with the necessary attributes
    params.permit(:cname, :cphone, :cemail, :caddress, :note, :receipt_status, :discount, :payment_method, :total)
  end
end
