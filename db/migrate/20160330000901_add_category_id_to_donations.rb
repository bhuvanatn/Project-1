class AddCategoryIdToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :category_id, :integer
  end
end
