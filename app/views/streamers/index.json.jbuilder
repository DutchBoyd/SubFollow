json.array!(@streamers) do |streamer|
  json.extract! streamer, :id, :name, :followers, :subscribers
  json.url streamer_url(streamer, format: :json)
end
