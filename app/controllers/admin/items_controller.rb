class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_item_path(@item.id)
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item.id)
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to admin_item_path(@item.id)
  end
  
  def item_params
    params.require(:item).permit(:genre_id, :price, :image, :name, :introduction, :is_active, :os, :cpu, :graphics, :memory, :storage, :connection, :resolution, :polling_rate, :size, :memory_bus, :memory_type, :core_clock, :memory_clock, :monitor_output, :chip, :response_speed, :refresh_rate, :input_terminal, :key_layout, :key_switch)
  end
  
end
