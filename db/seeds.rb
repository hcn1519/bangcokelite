# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


@extra_price = ["없음", "전기세", "수도세", "가스비", "인터넷"]
@meal = ["아침", "점심", "저녁", "제공 안함"]
@personal_option = ["침대", "책상", "옷장", "행거", "수납장", "에어컨", "TV", "화장실", "샤워기", "세탁기", "냉장고", "전자레인지", "가스레인지", "인덕션"]
@common_option = ["중앙난방", "화장실", "샤워실", "세탁실", "세제", "냉장고", "전자레인지", "가스레인지", "인덕션", "정수기"]
@room_img = ["http://subwayfix-bigwindow.c9.io/images/bangs/ha1.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha2.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha3.jpg",
            "http://subwayfix-bigwindow.c9.io/images/bangs/ha4.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha5.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha6.jpg",
            "http://subwayfix-bigwindow.c9.io/images/bangs/ha7.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha8.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha9.jpg",
            "http://subwayfix-bigwindow.c9.io/images/bangs/ha10.jpg","http://subwayfix-bigwindow.c9.io/images/bangs/ha11.jpg"]

#서강대 씨드

HasukHouse.create(
    id:1,
    hasuk_name: "서강 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남성전용",
    
    size_from:4, size_to:7, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:30, price_to:50, least_contract:6, 
    extra_price1:"#{@extra_price[0]}", extra_price2:"", extra_price3:"", extra_price4:"", extra_price5:"",
    
    meal1:"", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    personal_option15:"", personal_option16:"", personal_option17:"",
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    common_option11:"", common_option12:"", common_option13:"",
    internet:"와이파이", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.547867 , lng:126.9377533 ,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", univ_distance3:"학교선택",
     sogang_gate1:"남문", sogang_gate2:"교문선택", sogang_gate3:"교문선택",
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", ewha_gate3:"교문선택",
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", yonsei_gate3:"교문선택",
     distance_time1: 5, distance1: 282,
      
      #지하철까지 거리 및 시간
     subway1:"대흥", subway2:"지하철선택", subway_distance_time1: 7,
     subway_distance1: 460,
      
     room_img1:"/images/bangs/ha1.jpg",
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
    id:2,
    hasuk_name: "서강 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"고시원형", gender:"남녀층 분리",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:150, price_from:40, price_to:45, least_contract:6, 
    extra_price1:"", extra_price2:"#{@extra_price[1]}", extra_price3:"", extra_price4:"", extra_price5:"",
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    personal_option15:"", personal_option16:"", personal_option17:"",
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    common_option11:"", common_option12:"", common_option13:"",
    internet:"유선인터넷", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.549090 , lng:126.937480,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", univ_distance3:"학교선택",
     sogang_gate1:"남문", sogang_gate2:"교문선택", sogang_gate3:"교문선택",
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", ewha_gate3:"교문선택",
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", yonsei_gate3:"교문선택",
     distance_time1:7, distance1:282,
      
      #지하철까지 거리 및 시간
     subway1:"서강대", subway2:"지하철선택", subway_distance_time1:11,
     subway_distance1:723,
      
     room_img1:"/images/bangs/ha2.jpg",
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
    id:3,
    hasuk_name: "서강 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:0, big_deposit:100, price_from:40, price_to:45, least_contract:6, 
    extra_price1:"", extra_price2:"#{@extra_price[1]}", extra_price3:"", extra_price4:"", extra_price5:"",
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"#{@personal_option[0]}", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"#{@personal_option[5]}", personal_option7:"#{@personal_option[6]}", personal_option8:"#{@personal_option[7]}", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    personal_option15:"", personal_option16:"", personal_option17:"",
    
    common_option1:"#{@common_option[0]}", common_option2:"#{@common_option[1]}", common_option3:"#{@common_option[2]}", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    common_option11:"", common_option12:"", common_option13:"",
    internet:"유선인터넷", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.548791 , lng:126.937312,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", univ_distance3:"학교선택",
     sogang_gate1:"남문", sogang_gate2:"교문선택", sogang_gate3:"교문선택",
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", ewha_gate3:"교문선택",
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", yonsei_gate3:"교문선택",
     distance_time1:5, distance1:285,
      
      #지하철까지 거리 및 시간
     subway1:"대흥", subway2:"서강대", subway_distance_time1:8, subway_distance_time2:11,
     subway_distance1:482, subway_distance2:723,
      
     room_img1:"/images/bangs/ha3.jpg",
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
    id:4,
    hasuk_name: "서강 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"원룸형", gender:"남녀공용",
    
    size_from:4, size_to:8, floor_from:1, floor_to:3, building_age:1990, remodeling:2013,
    small_deposit:20, big_deposit:0, price_from:40, price_to:50, least_contract:6, 
    extra_price1:"", extra_price2:"#{@extra_price[1]}", extra_price3:"", extra_price4:"", extra_price5:"",
    
    meal1:"아침", meal2:"점심", meal3:"저녁", meal4:"", meal_memo:"식사는 반찬이 준비되어 있습니다.",
    
    personal_option1:"", personal_option2:"#{@personal_option[1]}", personal_option3:"#{@personal_option[2]}", personal_option4:"#{@personal_option[3]}", personal_option5:"#{@personal_option[4]}",
    personal_option6:"", personal_option7:"#{@personal_option[6]}", personal_option8:"", personal_option9:"#{@personal_option[8]}", personal_option10:"#{@personal_option[9]}",
    personal_option11:"#{@personal_option[10]}", personal_option12:"#{@personal_option[11]}", personal_option13:"#{@personal_option[12]}", personal_option14:"",
    personal_option15:"", personal_option16:"", personal_option17:"",
    
    common_option1:"", common_option2:"#{@common_option[1]}", common_option3:"", common_option4:"#{@common_option[3]}", common_option5:"#{@common_option[4]}",
    common_option6:"#{@common_option[5]}", common_option7:"#{@common_option[6]}", common_option8:"#{@common_option[7]}", common_option9:"#{@common_option[8]}", common_option10:"#{@common_option[9]}",
    common_option11:"", common_option12:"", common_option13:"",
    internet:"유선인터넷", post_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.548290 , lng:126.939664,
        #교문까지 거리 및 시간
     univ_distance1:"서강", univ_distance2:"학교선택", univ_distance3:"학교선택",
     sogang_gate1:"남문", sogang_gate2:"교문선택", sogang_gate3:"교문선택",
     ewha_gate1:"교문선택", ewha_gate2:"교문선택", ewha_gate3:"교문선택",
     yonsei_gate1:"교문선택", yonsei_gate2:"교문선택", yonsei_gate3:"교문선택",
     distance_time1:4, distance1:174,
      
      #지하철까지 거리 및 시간
     subway1:"대흥", subway2:"지하철선택", subway_distance_time1:4,
     subway_distance1:246,
      
     room_img1:"/images/bangs/ha4.jpg",
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
     