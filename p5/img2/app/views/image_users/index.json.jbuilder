json.array!(@image_users) do |image_user|
  json.extract! image_user, :id, :image_object_id
  json.url image_user_url(image_user, format: :json)
end