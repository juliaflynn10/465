json.array!(@courses) do |course|
  json.extract! course, :id, :title, :size
  json.url course_url(course, format: :json)
end
