class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

  def new
    @item = Item.new
    @categories = CategoryItem.all
  end

  def create
    item = Item.create(params.require(:item).permit(:name, :price, :category_id))
    redirect_to items_path
  end

  def edit
    @item = Item.find_by(id: params[:id])
    @categories = CategoryItem.all
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.update(params.require(:item).permit(:name, :price, :category_id))
    redirect_to items_path
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to items_path
  end
end
