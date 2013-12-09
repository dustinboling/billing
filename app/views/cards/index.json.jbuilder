json.array!(@cards) do |card|
  json.extract! card, :id, :stripe_id, :last4, :type, :exp_month, :exp_year, :fingerprint, :name, :address_line1, :address_line2, :address_city, :address_state, :address_zip, :account_id
  json.url card_url(card, format: :json)
end
