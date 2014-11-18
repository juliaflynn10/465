class ImageObject < ActiveRecord::Base
   belongs_to :user
   has_many :tag_object, dependent: :destroy
   has_many :image_users, dependent: :destroy
   has_many :users, through: :image_users
end
