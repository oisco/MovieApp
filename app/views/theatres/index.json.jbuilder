json.array!(@theatres) do |theatre|
  json.extract! theatre, :id, :theatreName, :location, :capacity
  json.url theatre_url(theatre, format: :json)
end
