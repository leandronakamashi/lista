json.array!(@homes) do |home|
  json.extract! home, :id, :adm
  json.url home_url(home, format: :json)
end
