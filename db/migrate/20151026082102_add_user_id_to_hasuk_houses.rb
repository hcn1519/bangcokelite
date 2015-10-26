class AddUserIdToHasukHouses < ActiveRecord::Migration
  def change
    add_column :hasuk_houses, :user_id, :integer
  end
end
