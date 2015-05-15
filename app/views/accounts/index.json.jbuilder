json.array!(@accounts) do |account|
  json.extract! account, :id, :費用, :種類
  json.url account_url(account, format: :json)
end
