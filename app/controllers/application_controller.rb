class ApplicationController < ActionController::Base
    before_action :set_current_product
    def set_current_product
        if session[:product_id]
            Current.product = Product.find_by(id: session[:product_id])
        end
    end
end
