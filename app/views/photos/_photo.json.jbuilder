json.extract! photo, :id, :image, :product_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
