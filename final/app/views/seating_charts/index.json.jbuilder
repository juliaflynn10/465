json.array!(@seating_charts) do |seating_chart|
  json.extract! seating_chart, :id, :course_id, :user_id, :seat_count, :course_id
  json.url seating_chart_url(seating_chart, format: :json)
end
