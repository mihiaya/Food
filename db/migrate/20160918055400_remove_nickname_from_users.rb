class RemoveNicknameFromUsers < ActiveRecord::Migration
  def change
    remove_colmn :users, :Nickname, :string
  end
end
