class ImgOb < ActiveRecord::Base
	belongs_to :user
	has_many :imgauths, dependent: :destroy
	has_many :users, through: :imgauths
	has_many :tags, dependent: :destroy
	

end
