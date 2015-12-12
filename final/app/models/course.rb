class Course < ActiveRecord::Base
        has_one :seating_chart, dependent: :destroy
	has_many :course_users
	belongs_to :user
	
end
