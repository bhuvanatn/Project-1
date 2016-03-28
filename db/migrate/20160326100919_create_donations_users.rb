class CreateDonationsUsers < ActiveRecord::Migration
  def change
    create_table :donations_users, :id => false do |t|
      t.integer :user_id
      t.integer :donation_id
      t.integer :amount
    end
  end
end
