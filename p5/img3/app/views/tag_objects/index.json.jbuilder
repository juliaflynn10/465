json.array!(@tag_objects) do |tag_object|
  json.extract! tag_object, :id, :tag_string, :image_object_id
  json.url tag_object_url(tag_object, format: :json)
end
