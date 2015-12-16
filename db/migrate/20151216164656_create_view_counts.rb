class CreateViewCounts < ActiveRecord::Migration
  def change
    create_table :view_counts do |t|
      t.string :ip_address

      t.timestamps null: false
    end
  end
end
