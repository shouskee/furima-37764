class ItemsController < ApplicationController
  before_action :authenticate_user!, only:[:new]


  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end


 private
 def item_params
  params.require(:item).permit(:product_name, :explanation, :image, :selling_price, :category_id, :condition_id, :load_id, :area_id, :shipping_day_id, :selling_price).merge(user_id: current_user.id)
 end
end

