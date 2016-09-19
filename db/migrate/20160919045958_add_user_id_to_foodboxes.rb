class AddUserIdToFoodboxes < ActiveRecord::Migration
  def change
    add_column :Foodboxes, :user_id, :integer
  end
end
