json.array!(@my_things) do |my_thing|
  json.extract! my_thing, :id, :stuff_id
  json.url my_thing_url(my_thing, format: :json)
end
