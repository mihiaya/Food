class UsersController < ApplicationController
  def show
    @nickname=current_user.nickname
    @foodbox=Foodbox.where(user_id: current_users.id)
  end
end
