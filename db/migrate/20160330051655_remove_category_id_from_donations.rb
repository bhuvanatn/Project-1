class RemoveCategoryIdFromDonations < ActiveRecord::Migration
  def change
    remove_column :donations, :category_id
  end
end
