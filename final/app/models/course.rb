class Course < ActiveRecord::Base
        belongs_to :user
        has_many :users
        has_one :seating_chart
end
