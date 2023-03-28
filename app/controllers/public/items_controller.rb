class Public::ItemsController < ApplicationController
  before_action :authenticate_customer!, except: [:top]
  
  def index
    @items = Item.all
    @genres = Genre.all
    @items = Item.where(is_active: true).order("id DESC")
  end

  def show
    @genres = Genre.all
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @item_comment = ItemComment.new
  end
end
