class HomeController < ApplicationController

  def index
    #@categories = Category.order(:name)

    @items = Item.only_enabled

    if params[:is_popular].present?
      @items = @items.where(is_popular: 1)
    end

    if params[:on_order].present?
      @items = @items.where(on_order: 0)
    end

    if params[:price_min].present?
      @items = @items.where('price >= ?', params[:price_min])
    end

    if params[:price_max].present?
      @items = @items.where('price <= ?', params[:price_max])
    end

    @items = @items.limit(10)

  end

end
