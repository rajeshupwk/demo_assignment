json.extract! product, :id, :title, :description, :SKU, :created_at, :updated_at
json.url product_url(product, format: :json)
