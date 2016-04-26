json.array!(@manufactures) do |manufacture|
  json.extract! manufacture, :id, :ManufactureID, :Manufacture, :Name, :Manufacture, :Email, :Mnaufacture, :Phone, :Number, :Manufacture, :Location
  json.url manufacture_url(manufacture, format: :json)
end
