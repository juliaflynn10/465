json.array!(@course_users) do |course_user|
  json.extract! course_user, :id, :user_id, :course_id, :course_id, :seating_chart_id
  json.url course_user_url(course_user, format: :json)
end
