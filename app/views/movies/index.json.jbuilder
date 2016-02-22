json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :description, :picture, :trailer, :length
  json.url movie_url(movie, format: :json)
end
