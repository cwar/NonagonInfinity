json.extract! album, :id, :artist_id, :title, :slug, :release_date, :cover, :album_notes, :lastmod, :lastuser, :created_at, :updated_at
json.url album_url(album, format: :json)
