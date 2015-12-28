class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :hasuk_house_id
      t.integer :user_id
      t.string :img
      
      t.timestamps null: false
    end
    add_index :attachments, :hasuk_house_id
    add_index :attachments, :user_id
  end
end
