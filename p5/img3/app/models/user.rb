class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :image_objects, dependent: :destroy
  has_many :image_users, dependent: :destroy
  has_many :image_objects, through: :image_users
  attr_accessor :name, :email, :password, :password_confirmation

end
