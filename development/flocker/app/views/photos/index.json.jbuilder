json.array!(@photos) do |photo|
  json.extract! photo, :filename, :path
  json.url photo_url(photo, format: :json)
end
