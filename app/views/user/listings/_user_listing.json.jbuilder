json.extract! user_listing, :id, :name, :content, :created_at, :updated_at
json.url user_listing_url(user_listing, format: :json)
