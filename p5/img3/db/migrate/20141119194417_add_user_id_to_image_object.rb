class AddUserIdToImageObject < ActiveRecord::Migration
  def change
    add_column :image_objects, :user_id, :integer
  end
end
