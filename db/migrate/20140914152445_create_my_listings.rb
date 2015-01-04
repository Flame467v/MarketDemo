class CreateMyListings < ActiveRecord::Migration
  def change
    create_table :my_listings do |t|
      t.string :name
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end