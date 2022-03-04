json.extract! listing, :id, :price, :title, :description, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
