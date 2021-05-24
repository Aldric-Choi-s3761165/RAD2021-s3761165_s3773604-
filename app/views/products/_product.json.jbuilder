json.extract! product, :id, :name, :price, :imagelink, :created_at, :updated_at
json.url product_url(product, format: :json)
