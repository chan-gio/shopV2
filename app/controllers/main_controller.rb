class MainController < ApplicationController
    def index
      @products = Product.select('*')
                        .group(:name)
                        .paginate(page: params[:page], per_page: 10)
    end
  end
  