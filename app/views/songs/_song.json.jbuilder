json.extract! song, :id, :name, :slug, :isoriginal, :original_artist, :lyrics, :metadata, :nickname, :created_at, :updated_at
json.url song_url(song, format: :json)
