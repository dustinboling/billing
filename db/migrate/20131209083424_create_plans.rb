class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :stripe_id
      t.string :name
      t.string :description
      t.integer :amount
      t.string :interval
      t.integer :interval_count
      t.integer :trial_period_days

      t.timestamps
    end
  end
end
