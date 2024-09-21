json.extract! song, :id, :name, :slug, :is_original, :original_artist, :lyrics, :metadata, :nickname, :created_at, :updated_at
json.url song_url(song, format: :json)
