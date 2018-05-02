class ProductsController < ApplicationController
  def index
    @books = Book.new.api_call

    @products = Product.all
    @order_item = current_order.order_items.new
  end
end
