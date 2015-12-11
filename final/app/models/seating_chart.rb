class SeatingChart < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  has_many :users
end
