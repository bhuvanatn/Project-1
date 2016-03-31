class CreateCategoriesDonations < ActiveRecord::Migration
  def change
    create_table :categories_donations, :id => false do |t|
      t.integer :category_id
      t.integer :donation_id
    end
  end
end
