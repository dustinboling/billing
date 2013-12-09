class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :stripe_id
      t.string :name
      t.string :email
      t.string :default_card
      t.boolean :delinquent

      t.timestamps
    end
  end
end
