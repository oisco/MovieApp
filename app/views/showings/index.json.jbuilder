json.array!(@showings) do |showing|
  json.extract! showing, :id, :theatre_id, :movie_id, :dateAndTime
  json.url showing_url(showing, format: :json)
end
