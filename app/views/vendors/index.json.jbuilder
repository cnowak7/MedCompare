json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :email, :phone_number
  json.url vendor_url(vendor, format: :json)
end
