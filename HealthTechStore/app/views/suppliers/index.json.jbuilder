json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :companyName, :pointOfContact, :website, :phone
  json.url supplier_url(supplier, format: :json)
end
