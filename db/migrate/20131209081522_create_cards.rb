class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :stripe_id
      t.string :fingerprint
      t.string :last4
      t.string :type
      t.integer :exp_month
      t.integer :exp_year
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.references :account, index: true

      t.timestamps
    end
  end
end
