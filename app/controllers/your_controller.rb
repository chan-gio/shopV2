# app/controllers/your_controller.rb
class YourController < ApplicationController
    def get_available_colors
      # Your logic to fetch available colors based on product_name and size
      # Return the available colors as JSON
  
      # Example:
      product_name = params[:product_name]
      size = params[:size]
      available_colors = Product.where(name: product_name, size: size).pluck(:color)
  
      render json: available_colors
    end
  end
  