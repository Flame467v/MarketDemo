json.array!(@my_listings) do |my_listing|
  json.extract! my_listing, :id, :name, :description, :price
  json.url my_listing_url(my_listing, format: :json)
end
