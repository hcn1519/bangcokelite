class CreateHasukHouses < ActiveRecord::Migration
  def change
    create_table :hasuk_houses do |t|
    
      #하숙집 정보
      t.string :hasuk_name
      t.string :celPhone
      t.string :telPhone
      t.string :memo
      t.string :hasuk_kind
      t.string :gender
      t.integer :size_from
      t.integer :size_to
      t.integer :floor_from
      t.integer :floor_to
      t.integer :building_age
      t.integer :remodeling
      
      
      #가격
      t.integer :small_deposit
      t.integer :big_deposit
      t.integer :price_from
      t.integer :price_to
      t.integer :least_contract
      t.string :extra_price
      
      
      #옵션
      t.string :meal
      t.string :meal_memo
      t.string :personal_option
      t.string :common_option
      t.string :internet
      
      #상세설명
      t.text :post_description
      
      #주소
      t.string :address
      t.float :lat
      t.float :lng
      
      #거리
      t.string :univ_distance1
      t.string :univ_distance2
      t.string :univ_distance3
      t.string :sogang_gate1
      t.string :sogang_gate2
      t.string :sogang_gate3
      t.string :ewha_gate1
      t.string :ewha_gate2
      t.string :ewha_gate3
      t.string :yonsei_gate1
      t.string :yonsei_gate2
      t.string :yonsei_gate3
     
      t.integer :distance_time1
      t.integer :distance_time2
      t.integer :distance_time3
      t.integer :distance1
      t.integer :distance2
      t.integer :distance3
      
      #방사진
      t.string :room_img
      t.integer :room_price
      t.string :room_description
      
      #공동시설 사진
      t.string :common_img
      
      #식사 사진
      t.string :meal_img
      
      #할인율
      t.integer :discount_price
      t.integer :discount_rate
      
      t.timestamps null: false
    end
  end
end
