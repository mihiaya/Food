class FoodsController < ApplicationController
  def index
    @foods = Foodbox.all
  end

  def show
    
  end

  def new
    
  end

  def create
    Foodbox.create(foodbox_params)
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private
  def foodbox_params
    params.permit(:nickname, :photo, :restaurant)
  end
end

