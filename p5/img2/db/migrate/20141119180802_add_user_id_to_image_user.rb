class AddUserIdToImageUser < ActiveRecord::Migration
  def change
    add_column :image_users, :user_id, :integer
  end
end
