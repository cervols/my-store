class ItemsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :edit, :update, :create, :destroy]

  def index
    @items = collection
  end

  def show
    @item = resource
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def collection
      Item.all
    end

    def resource
      collection.find(params[:id])
    end
end
