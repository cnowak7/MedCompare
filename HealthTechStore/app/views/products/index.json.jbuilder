json.array!(@products) do |product|
  json.extract! product, :id, :name, :image, :description, :categoryId, :manufacturerId, :vendorId, :salePrice, :purchasePrice, :quantityOnHand
  json.url product_url(product, format: :json)
end
