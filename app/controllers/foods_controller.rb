class FoodsController < ApplicationController

  before_action :move_to_index, except: :index
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
    params.permit(:photo, :restaurant, :comment)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

