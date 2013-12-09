json.array!(@plans) do |plan|
  json.extract! plan, :id, :stripe_id, :name, :description, :amount, :interval, :interval_count, :trial_period_days
  json.url plan_url(plan, format: :json)
end
