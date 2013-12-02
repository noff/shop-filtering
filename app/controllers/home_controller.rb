class HomeController < ApplicationController

  def index
    @categories = Category.order(:name)
    @items = Item.limit(10)
  end

end
