json.array!(@accounts) do |account|
  json.extract! account, :id, :stripe_id, :name, :email, :default_card, :delinquent
  json.url account_url(account, format: :json)
end
