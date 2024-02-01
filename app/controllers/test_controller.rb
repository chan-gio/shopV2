class TestController < ApplicationController
    def index
      
    end
    def save_data
        # Step 1: Retrieve data from the request
        receipt_params = params.permit(:name, :address, :note, :payment_method, :phone)
    
        # Step 2: Save the data to the database or perform any desired actions
        @receipt = Receipt.new(receipt_params)
    
        if @receipt.save
          render json: { status: 'success' }
        else
          render json: { status: 'error', errors: @receipt.errors.full_messages }, status: :unprocessable_entity
        end
      end
  end
  