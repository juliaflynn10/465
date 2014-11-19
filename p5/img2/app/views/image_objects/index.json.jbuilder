json.array!(@image_objects) do |image_object|
  json.extract! image_object, :id, :filename, :public
  json.url image_object_url(image_object, format: :json)
end
