class CourseUser < ActiveRecord::Base
  belongs_to :course
  belongs_to :seating_chart
end
