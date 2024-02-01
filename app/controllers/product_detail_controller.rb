class ProductDetailController < ApplicationController
  def show
    @product = Product.find_by(name: params[:name])
    
    if @product.nil?
      # Xử lý trường hợp không tìm thấy sản phẩm
      # Ví dụ: Redirect hoặc hiển thị thông báo lỗi
      redirect_to root_path, alert: "Product not found"
    else
      # Xử lý trường hợp tìm thấy sản phẩm
    end
  end
end
