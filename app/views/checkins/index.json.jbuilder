json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :busca
  json.url checkin_url(checkin, format: :json)
end
