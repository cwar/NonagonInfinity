json.extract! stat, :id, :user_id, :shows_attended, :favorite_songs, :created_at, :updated_at
json.url stat_url(stat, format: :json)
