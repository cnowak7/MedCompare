json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :name, :email, :phone_number
  json.url manufacturer_url(manufacturer, format: :json)
end
