class CreateFavoriteHasukHouses < ActiveRecord::Migration
  def change
    create_table :favorite_hasuk_houses do |t|
      t.integer :hasuk_house_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
