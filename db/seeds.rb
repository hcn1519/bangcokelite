# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
=end


=begin
@meal = ["아침", "점심", "저녁", "제공 안함"]
@personal_option = ["침대", "책상", "옷장", "행거", "수납장", "에어컨", "TV", "화장실", "샤워실", "세탁기", "냉장고", "전자레인지", "가스레인지", "인덕션"]
@common_option = ["중앙난방", "화장실", "샤워실", "세탁실", "CCTV", "냉장고", "전자레인지", "가스레인지", "인덕션", "정수기"]

for i in 1..20 do
   @room_img = Array.new
   @room_img[i-1] = ["images/bangs/ha#{i}.jpg"] 
end
=end


user2 = User.new
user2.id = 2
user2.name="홍창남"
user2.email = 'hcn1519@gmail.com'
user2.password = 'power064'
user2.password_confirmation ="power064"
user2.save!

#서강대 씨드

=begin
HasukHouse.create(
    division:"남문(대흥역)",
    id:1, user_id:2,
    hasuk_name: "서강 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    
    

    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.547867 , lng:126.9377533 ,
    
    #교문까지 거리 및 시간
     univ1:"서강",
     gate1:"남문", 
     distance_time1: 5, 
     distance1: 282,
     
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"대흥",  transportation_distance_time: 7,
     transportation_distance: 460,

     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha1.jpg")),
     room_img2:"",
     room_img3:"",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:30000
    )

HasukHouse.create(
    division:"남문(대흥역)",
    id:2, user_id:2,
    hasuk_name: "서강 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.549090 , lng:126.937480,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:7, distance1:282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"대흥",  transportation_distance_time:11,
     transportation_distance:723,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha2.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"남문(대흥역)",
    id:3, user_id:2,
    hasuk_name: "서강 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.548791 , lng:126.937312,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:5, distance1:285,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"대흥",  transportation_distance_time:8,
     transportation_distance:482,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha3.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:4, user_id:2,
    hasuk_name: "서강 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.548290 , lng:126.939664,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:174,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"서강대",  transportation_distance_time:4,
     transportation_distance:246,
      
    :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha4.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:5, user_id:2,
    hasuk_name: "서강 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.548715 , lng: 126.937881 ,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1: 5, distance1: 280,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"서강대",  transportation_distance_time: 7,
     transportation_distance: 465,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha5.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:28000
    )

HasukHouse.create(
    division:"남문(대흥역)",
    id:6, user_id:2,
    hasuk_name: "서강 하숙방6", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:2000, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-91", lat:37.548600 , lng:126.937538,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:7, distance1:282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"서강대",  transportation_distance_time:12,
     transportation_distance:760,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha6.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"남문(대흥역)",
    id:7, user_id:2,
    hasuk_name: "서강 하숙방7", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-89", lat:37.548498 , lng:126.937372,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:5, distance1:288,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"광성중고등학교",  transportation_distance_time:9,
     transportation_distance:500,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha7.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:8, user_id:2,
    hasuk_name: "서강 하숙방8", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로 34-14", lat:37.549127, lng:126.937206,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:170,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"광성중고등학교",  transportation_distance_time:4,
     transportation_distance:250,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha8.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:9, user_id:2,
    hasuk_name: "서강 하숙방9", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-66", lat:37.548940 , lng:126.937147,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:5, distance1:270,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"광성중고등학교",  transportation_distance_time:8,
     transportation_distance:483,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha9.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:10, user_id:2,
    hasuk_name: "서강 하숙방10", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-86", lat:37.548638 , lng:126.937388,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", 
     sogang_gate1:"남문", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:175,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"광성중고등학교",  transportation_distance_time:4,
     transportation_distance:246,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha10.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )
#연세대 씨드

HasukHouse.create(
    division:"연대서문",
    id:11, user_id:2,
    hasuk_name: "연세 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이",  personal_trash:"해줌", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 339-6", lat:37.563879 , lng:126.933127 ,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"서문", yonsei_gate2:"교문선택", 
     distance_time1: 3, distance1: 170,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time: 15,
     transportation_distance: 860,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha11.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:30000
    )

HasukHouse.create(
    division:"연대서문",
    id:12, user_id:2,
    hasuk_name: "연세 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 339-96", lat:37.563743 , lng:126.932757,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"서문", yonsei_gate2:"교문선택", 
     distance_time1:7, distance1:282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:14,
     transportation_distance:850,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha12.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"연대서문",
    id:13, user_id:2,
    hasuk_name: "연세 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 339-23", lat:37.565023 , lng:126.931673,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"서문", yonsei_gate2:"교문선택", 
     distance_time1:5, distance1:190,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:15,
     transportation_distance:900,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha13.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"연대서문",
    id:14, user_id:2,
    hasuk_name: "연세 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 309-25", lat:37.565299 , lng:126.931979,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"서문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:185,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:4,
     transportation_distance:246,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha14.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"연대서문",
    id:15, user_id:2,
    hasuk_name: "연세 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 340-40", lat:37.564725 , lng: 126.931271 ,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"서문", yonsei_gate2:"교문선택", 
     distance_time1: 5, distance1: 280,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time: 7,
     transportation_distance: 850,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha15.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:28000
    )

HasukHouse.create(
    division:"연대남문",
    id:16, user_id:2,
    hasuk_name: "연세 하숙방6", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:2000, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건���은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562964, lng:126.930199,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"남문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:120,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:12,
     transportation_distance:765,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha16.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"연대남문",
    id:17, user_id:2,
    hasuk_name: "연세 하숙방7", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.563190 , lng:126.930134,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"남문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:118,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:10,
     transportation_distance:880,
      
    :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha17.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"연대남문",
    id:18, user_id:2,
    hasuk_name: "연세 하숙방8", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562709, lng:126.930038,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"남문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:170,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:14,
     transportation_distance:800,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha18.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"연대남문",
    id:19, user_id:2,
    hasuk_name: "연세 하숙방9", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562752 , lng:126.930215,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"남문", yonsei_gate2:"교문선택", 
     distance_time1:3, distance1:90,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:14,
     transportation_distance:705,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha19.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"연대남문",
    id:20, user_id:2,
    hasuk_name: "연세 하숙방10", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562688 , lng:126.929598,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"남문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:160,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"서대문우체국",  transportation_distance_time:10,
     transportation_distance:500,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha20.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )     

HasukHouse.create(
    division:"정문(신촌역)",
    id:21, user_id:2,
    hasuk_name: "연세 하숙방11", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.558810 , lng:126.935077,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"정문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:162,
      
      #교통수단까지 거리 및 시간
    transportation_kind:"버스", transportation_bus:"연세대앞",   transportation_distance_time:14,
     transportation_distance:720,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha21.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )     
HasukHouse.create(
    division:"정문(신촌역)",
    id:22, user_id:2,
    hasuk_name: "연세 하숙방12", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.559006 , lng:126.935790,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"정문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:160,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"연세대앞",  transportation_distance_time:10,
     transportation_distance:520,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha22.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )     

HasukHouse.create(
    division:"정문(신촌역)",
    id:23, user_id:2,
    hasuk_name: "연세 하숙방13", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.558547 , lng:126.935044,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"정문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:160,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"연세대앞",  transportation_distance_time:14,
     transportation_distance:475,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha23.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )     
     
HasukHouse.create(
    division:"정문(신촌역)",
    id:24, user_id:2,
    hasuk_name: "연세 하숙방14", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.559011, lng:126.934797,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"정문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:172,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"연세대앞",  transportation_distance_time:9,
     transportation_distance:460,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha24.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )     
     
     
HasukHouse.create(
    division:"정문(신촌역)",
    id:25, user_id:2,
    hasuk_name: "연세 하숙방15", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.558828 , lng:126.934266,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"학교선택", 
     sogang_gate1:"교문선���", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", 
     yonsei_gate1:"정문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:160,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"연세대앞",  transportation_distance_time:8,
     transportation_distance:370,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha25.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )
     
     
     
#이화여대 씨드

HasukHouse.create(
    division:"정문(이대역)",
    id:26, user_id:2,
    hasuk_name: "이화 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.558215, lng:126.945186 ,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1: 5, distance1: 282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"이대",  transportation_distance_time: 7,
     transportation_distance: 460,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha26.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:30000
    )

HasukHouse.create(
    division:"정문(이대역)",
    id:27, user_id:2,
    hasuk_name: "이화 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.558513 , lng:126.944703,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:7, distance1:282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"이대",  transportation_distance_time:11,
     transportation_distance:723,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha27.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"정문(이대역)",
    id:28, user_id:2,
    hasuk_name: "이화 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.557845 , lng:126.944188,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:5, distance1:285,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"이대",  transportation_distance_time:8,
     transportation_distance:482,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha28.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"정문(이대역)",
    id:29, user_id:2,
    hasuk_name: "이화 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.557505 , lng:126.943888,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:174,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"이대",  transportation_distance_time:4,
     transportation_distance:246,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha29.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"정문(이대역)",
    id:30, user_id:2,
    hasuk_name: "이화 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.558572 , lng:126.944290 ,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"학교선택", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1: 5, distance1: 280,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"이대",  transportation_distance_time: 7,
     transportation_distance: 465,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha30.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:28000
    )


#이대 연대 겹치는 구역, 신촌기차역
HasukHouse.create(
    division:"신촌기차역",
    id:31, user_id:2,
    hasuk_name: "이화연대 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.557413 , lng:126.940074 ,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"연세", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"정문", 
     distance_time1: 5, distance1: 282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"신촌",  transportation_distance_time: 7,
     transportation_distance: 460,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha31.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:30000
    )

HasukHouse.create(
    division:"신촌기차역",
    id:32, user_id:2,
    hasuk_name: "이화연대 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.557451 , lng:126.941453,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"연세", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"정문", 
     distance_time1:7, distance1:282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"지하철", transportation_subway:"신촌",  transportation_distance_time:11,
     transportation_distance:723,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha32.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"신촌기차역",
    id:33, user_id:2,
    hasuk_name: "이화연대 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.558182 , lng:126.941501,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"연세", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"정문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"정문", 
     distance_time1:5, distance1:285,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"신촌오거리",  transportation_distance_time:8,
     transportation_distance:482,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha33.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"신촌기차역",
    id:34, user_id:2,
    hasuk_name: "이화연대 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.558365 , lng:126.940788,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"이화", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"정문", 
     yonsei_gate1:"정문", yonsei_gate2:"교문선택", 
     distance_time1:4, distance1:174,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"신촌오거리",  transportation_distance_time:4,
     transportation_distance:246,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha34.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"신촌기차역",
    id:35, user_id:2,
    hasuk_name: "이화연대 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌", post_description:"방 별로 창문��� 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.557157 , lng: 126.939345,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"이화", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"정문", 
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", 
     distance_time1: 5, distance1: 280,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"신촌오거리",  transportation_distance_time: 7,
     transportation_distance: 465,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha35.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:28000
    )


#이대 연대 겹치는 구역, 이대후문, 연대 동문
HasukHouse.create(
    division:"이대후문",
    id:36, user_id:2,
    hasuk_name: "이화연대 하숙방6", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.567185 , lng:126.946372 ,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"이화", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"후문", 
     yonsei_gate1:"동문", yonsei_gate2:"교문선택", 
     distance_time1: 5, distance1: 282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"이대후문",  transportation_distance_time: 7,
     transportation_distance: 460,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha36.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[9]}",
     common_img2:"#{@room_img[10]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:30000
    )

HasukHouse.create(
    division:"이대후문",
    id:37, user_id:2,
    hasuk_name: "이화연대 하숙방7", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.567580 , lng:126.945884,
        #교문까지 거리 및 시간
     univ_distance1:"연세", univ_distance2:"이화", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"교문선택", ewha_gate2:"후문", 
     yonsei_gate1:"동문", yonsei_gate2:"교문선택", 
     distance_time1:7, distance1:282,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"이대후문",  transportation_distance_time:11,
     transportation_distance:723,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha37.jpg")),
     room_img2:"#{@room_img[1]}",
     room_img3:"#{@room_img[2]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:40000
     )
    
HasukHouse.create(
    division:"이대후문",
    id:38, user_id:2,
    hasuk_name: "이화연대 하숙방8", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.567916 , lng:126.947123,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"연세", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"후문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"동문", 
     distance_time1:5, distance1:285,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"이대후문",  transportation_distance_time:8,
     transportation_distance:482,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha38.jpg")),
     room_img2:"#{@room_img[0]}",
     room_img3:"#{@room_img[1]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:45, room_price2:45, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[3]}",
     common_img2:"#{@room_img[4]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[5]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:50000
     )

HasukHouse.create(
    division:"이대후문",
    id:39, user_id:2,
    hasuk_name: "이화연대 하숙방9", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price:0,
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"유선인터넷", personal_trash:"본인이 알아서", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.567091 , lng:126.946732,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"연세", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"후문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"동문", 
     distance_time1:4, distance1:174,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"이대후문",  transportation_distance_time:4,
     transportation_distance:246,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha39.jpg")),
     room_img2:"#{@room_img[7]}",
     room_img3:"#{@room_img[8]}",
     room_img4:"",
     room_img5:"",
     room_img6:"",
     room_img7:"",
     room_img8:"",
     room_price1:30, room_price2:35, room_price3:40,
     room_description1:"남동향입니다.", room_description2:"화장실이 따로 있습니다.", room_description3:"", room_description4:"", room_description5:"",
     room_description6:"", room_description7:"", room_description8:"",
     common_img1:"#{@room_img[6]}",
     common_img2:"#{@room_img[7]}",
     common_img3:"",
     common_img4:"",
     meal_img1:"#{@room_img[2]}",
     meal_img2:"",
     meal_img3:"",
     meal_img4:"",
     discount_price:0
     )

HasukHouse.create(
    division:"이대후문",
    id:40, user_id:2,
    hasuk_name: "이화연대 하숙방10", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price:3,
    
    meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    
    internet:"와이파이", personal_trash:"해줌",  post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.568180 , lng: 126.945954,
        #교문까지 거리 및 시간
     univ_distance1:"이화", univ_distance2:"연세", 
     sogang_gate1:"교문선택", sogang_gate2:"교문선택", 
     ewha_gate1:"후문", ewha_gate2:"교문선택", 
     yonsei_gate1:"교문선택", yonsei_gate2:"동문", 
     distance_time1: 5, distance1: 280,
      
      #교통수단까지 거리 및 시간
     transportation_kind:"버스", transportation_bus:"이대후문",  transportation_distance_time: 7,
     transportation_distance: 465,
      
     :room_img1 => File.open(File.join(Rails.root, "public/images/bangs/ha40.jpg")),
     
    )
=end