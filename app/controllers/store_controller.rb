class StoreController < ApplicationController
  include SessionCounter

  before_action :inc_counter, only: [:index]

  def index
    @products = Product.order(:title)
    @n_times = session[:counter]
  end
end
