class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.text :donationtype
      t.timestamps null: false
    end
  end
end
