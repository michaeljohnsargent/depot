class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @count = increment_counter
    @time = Time.now
    @show_message = "You have been here #{@count} times." if session[:counter] > 5
  end

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end

end
