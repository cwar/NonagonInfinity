json.extract! venue, :id, :venuename, :streetaddress, :city, :state, :country, :zip, :url, :capacity, :aliasof, :slug, :created_at, :updated_at
json.url venue_url(venue, format: :json)
