json.extract! album, :id, :artist_id, :albumtitle, :displayname, :slug, :releasedate, :cover, :album_notes, :is_statsable, :lastmod, :lastuser, :created_at, :updated_at
json.url album_url(album, format: :json)
