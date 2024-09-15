json.extract! artist, :id, :name, :slug, :bio, :active_years, :created_at, :updated_at
json.url artist_url(artist, format: :json)
