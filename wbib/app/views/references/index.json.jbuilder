json.array!(@references) do |reference|
  json.extract! reference, :id, :URL, :date, :topic_id
  json.url reference_url(reference, format: :json)
end
