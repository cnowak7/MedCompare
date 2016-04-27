json.array!(@clinics) do |clinic|
  json.extract! clinic, :id, :name, :email, :phone_number, :rating
  json.url clinic_url(clinic, format: :json)
end
