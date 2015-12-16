class CreateHasukHouses < ActiveRecord::Migration
  def change
    create_table :hasuk_houses do |t|
      
      t.integer :user_id
      t.string :hasuk_name
      t.string :celPhone
      t.string :telPhone
      #이름 수정
      t.string :contact_memo
      
      t.string :hasuk_kind
      t.string :gender
      
      
      #가격 수정
      t.integer :price_from
      t.integer :price_to
      
      t.integer :miniroom_price_from
      t.integer :miniroom_price_to
      t.integer :oneroom_price_from 
      t.integer :oneroom_price_to 
      t.integer :sleeping_only_price_from 
      t.integer :mate_price_from

      t.integer :small_deposit, :default => 0
      t.integer :least_contract
      
      t.integer :big_deposit, :default => 0
      t.boolean :admin_fee, :default => false
      
      #상세설명
      t.string :title
      t.text :hasuk_house_description
      
      
      t.string :address
      t.float :lat
      t.float :lng
      t.string :division
      
      #교문까지 거리 및 시간
      t.string :univ1
      t.string :univ2
      
      t.string :gate1
      t.string :gate2
      
      t.integer :distance_time1
      t.integer :distance_time2
      
      t.integer :distance1
      t.integer :distance2
      
      
      #교통수단까지 거리 및 시간1
      t.string :trans_kind1
      t.string :trans_kind2
      
      t.string :station1
      t.string :station2
      
      t.integer :trans_distance_time1
      t.integer :trans_distance1

      t.integer :trans_distance_time2
      t.integer :trans_distance2
      
      
      #사진만
      t.string :room_img1
      t.string :room_img2
      t.string :room_img3
      t.string :room_img4
      t.string :room_img5
      t.string :room_img6
      t.string :room_img7
      t.string :room_img8
      
      t.string :common_img1
      t.string :common_img2
      t.string :common_img3
      t.string :common_img4
      t.string :meal_img1
      t.string :meal_img2
      t.string :meal_img3
      t.string :meal_img4

      t.integer :hasuk_house_viewcount
      
      t.timestamps null: false
    end
  end
end
