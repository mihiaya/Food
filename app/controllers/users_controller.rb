class UsersController < ApplicationController
  def show
    @nickname=current_user.nickname
    @foodboxes=Foodbox.where(user_id: current_user.id)
  end
end
