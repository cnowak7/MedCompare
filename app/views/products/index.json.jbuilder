json.array!(@products) do |product|
  json.extract! product, :id, :name, :image, :description, :category_id, :vendor_id, :manufacturer_id, :sale_price, :purchase_price, :quantity_on_hand
  json.url product_url(product, format: :json)
end
