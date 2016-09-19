class FoodboxesController < ApplicationController
   before_action :move_to_index, except: :index
  def index
    @foodboxes = Foodbox.all
  end

  def show
    
  end

  def new
    @foodbox = Foodbox.new
  end

  def create
    Foodbox.create(foodbox_params)
  end

  def edit
    @foodbox = Foodbox.find(params[:id])
  end

  def update
    foodbox=Foodbox.find(params[:id])
    foodbox.update(foodbox_params) if current_user.id == foodbox.user_id
  end

  def destroy
    foodbox=Foodbox.find(params[:id])
    foodbox.destroy if current_user.id == foodbox.user_id
  end

  private
  def foodbox_params
    params.require(:foodbox).permit(:photo, :restaurant, :comment).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
