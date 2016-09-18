class CreateFoodboxes < ActiveRecord::Migration
  def change
    create_table :foodboxes do |t|
      t.string :restaurant
      t.text :photo
      t.text :comment
      t.timestamps
    end
  end
end
