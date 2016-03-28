class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
          t.text :firstname
          t.text :lastname
          t.text :address
          t.text :subrub
          t.integer :postcode
          t.integer :phone
          t.text :email
      t.timestamps null: false
    end
  end
end
