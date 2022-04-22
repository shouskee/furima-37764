class ItemsController < ApplicationController
  def index
    @Merchandises = Merchandise.order("created_at DESC")
  end

  def new
    @item = Item.new
  end
  
end
