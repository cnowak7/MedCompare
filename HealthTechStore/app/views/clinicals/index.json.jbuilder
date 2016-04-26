json.array!(@clinicals) do |clinical|
  json.extract! clinical, :id, :ClinicalID, :Clinical, :Name, :Clinical, :Email, :Clinical, :Phone, :Number, :Clinical, :Rating
  json.url clinical_url(clinical, format: :json)
end
