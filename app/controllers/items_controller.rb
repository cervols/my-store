class ItemsController < ApplicationController
  def index
    @items = collection
  end

  def show
    @item = resource
  end

  private

  def collection
    Item.all
  end

  def resource
    collection.find(params[:id])
  end
end
