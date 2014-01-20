json.array!(@daws) do |daw|
  json.extract! daw, :id
  json.url daw_url(daw, format: :json)
end
