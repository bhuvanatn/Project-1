class RemoveDonationtypeFromDonations < ActiveRecord::Migration
  def change
    remove_column :donations, :donationtype
  end
end
