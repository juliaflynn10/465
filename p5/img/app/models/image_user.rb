class ImageUser < ActiveRecord::Base
  belongs_to :image_object
  belongs_to :user
end
