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



user2 = User.new
user2.id = 2
user2.name="홍창남"
user2.email = 'hcn1519@gmail.com'
user2.password = 'power064'
user2.password_confirmation ="power064"
user2.save!


#서강대 씨드

distance_kind = [250, 300, 350, 400, 450, 500, 1000, 1050, 1100, 1150, 50, 100, 55]
distance_time_kind = [3,4,5,6,7,8,9,10,11,12,13,14]

small_deposit = [0, 10, 20]
price_from = [25,30,35,40,43]
price_to = [45,50,53,55,60]
least_contract = [0,6,12]

HasukHouse.create(
    division:"남문(대흥역)",
    id:1, user_id:2,
    hasuk_name: "서강 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "수요일마다 삼겹살 파티하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", 
    address:"서울특별시 마포구 독막로 221-7", lat:37.547867 , lng:126.9377533 ,
    
    #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"대흥",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "광성중고등학교",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
    
    big_deposit: 100,
    admin_fee: true,
    :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha1.jpg")),
     
    )

HasukHouse.create(
    division:"남문(대흥역)",
    id:2, user_id:2,
    hasuk_name: "서강 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.549090 , lng:126.937480,

     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"대흥",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "광성중고등학교",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
     
     big_deposit: 200,
    admin_fee: true, 
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha2.jpg")),
     
     )
    
HasukHouse.create(
    division:"남문(대흥역)",
    id:3, user_id:2,
    hasuk_name: "서강 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "수요일마다 삼겹살 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.548791 , lng:126.937312,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"대흥",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "광성중고등학교",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha3.jpg")),
     
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:4, user_id:2,
    hasuk_name: "서강 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "수요일마다 삼겹살 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.548290 , lng:126.939664,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"대흥",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "광성중고등학교",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
    :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha4.jpg")),
     
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:5, user_id:2,
    hasuk_name: "서강 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
   small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.548715 , lng: 126.937881 ,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"광성중고등학교",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "대흥",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
    
    big_deposit: 100,
    admin_fee: true,  
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha5.jpg")),
     
    )

HasukHouse.create(
    division:"남문(대흥역)",
    id:6, user_id:2,
    hasuk_name: "서강 하숙방6", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
      hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-91", lat:37.548600 , lng:126.937538,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"광성중고등학교",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "대흥",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha6.jpg")),
    
     )
    
HasukHouse.create(
    division:"남문(대흥역)",
    id:7, user_id:2,
    hasuk_name: "서강 하숙방7", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
      hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-89", lat:37.548498 , lng:126.937372,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
   #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"광성중고등학교",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "대흥",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha7.jpg")),
     
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:8, user_id:2,
    hasuk_name: "서강 하숙방8", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
      hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로 34-14", lat:37.549127, lng:126.937206,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"광성중고등학교",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "대흥",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha8.jpg")),
     
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:9, user_id:2,
    hasuk_name: "서강 하숙방9", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample, 
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "수요일마다 삼겹살 파티하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-66", lat:37.548940 , lng:126.937147,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"광성중고등학교",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "대흥",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha9.jpg")),
     
     )

HasukHouse.create(
    division:"남문(대흥역)",
    id:10, user_id:2,
    hasuk_name: "서강 하숙방10", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    

    title: "수요일마다 삼겹살 파티하는 집",
      hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 신수동 89-86", lat:37.548638 , lng:126.937388,
     
     #교문까지 거리 및 시간
    univ1:"서강",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"광성중고등학교",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "대흥",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha10.jpg")),
     
     )
#연세대 씨드

HasukHouse.create(
    division:"연대서문",
    id:11, user_id:2,
    hasuk_name: "연세 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample,
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 339-6", lat:37.563879 , lng:126.933127 ,
      
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"서문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
     
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연희교차로/브라운스톤우정",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
     big_deposit: 100,
    admin_fee: true, 
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha11.jpg")),
     
    )

HasukHouse.create(
    division:"연대서문",
    id:12, user_id:2,
    hasuk_name: "연세 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
     
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 339-96", lat:37.563743 , lng:126.932757,
    
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"서문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연희교차로/브라운스톤우정",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha12.jpg")),
     
     )
    
HasukHouse.create(
    division:"연대서문",
    id:13, user_id:2,
    hasuk_name: "연세 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "수요일마다 삼겹살 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 339-23", lat:37.565023 , lng:126.931673,
    
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"서문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample, 
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연희교차로/브라운스톤우정",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      big_deposit: 100,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha13.jpg")),
     
     )

HasukHouse.create(
    division:"연대서문",
    id:14, user_id:2,
    hasuk_name: "연세 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "목요일마다 고기 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 309-25", lat:37.565299 , lng:126.931979,
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"서문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연희교차로/브라운스톤우정",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha14.jpg")),
     
     )

HasukHouse.create(
    division:"연대서문",
    id:15, user_id:2,
    hasuk_name: "연세 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "목요일마다 고기 파티하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 연희동 340-40", lat:37.564725 , lng: 126.931271 ,
    
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"서문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
    
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연희교차로/브라운스톤우정",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample, 
    
      big_deposit: 100,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha15.jpg")),
    
    )

HasukHouse.create(
    division:"연대남문",
    id:16, user_id:2,
    hasuk_name: "연세 하숙방6", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
     
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
   
    title: "목요일마다 고기 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건���은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562964, lng:126.930199,
     
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"서문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연희교차로/브라운스톤우정",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha16.jpg")),
    
     )
    
HasukHouse.create(
    division:"연대남문",
    id:17, user_id:2,
    hasuk_name: "연세 하숙방7", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
   
    title: "목요일마다 고기 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.563190 , lng:126.930134,
    
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"서문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
    :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha17.jpg")),
    
     )

HasukHouse.create(
    division:"연대남문",
    id:18, user_id:2,
    hasuk_name: "연세 하숙방8", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "목요일마다 고기 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562709, lng:126.930038,
    
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"서문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample, 
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha18.jpg")),
    
     )

HasukHouse.create(
    division:"연대남문",
    id:19, user_id:2,
    hasuk_name: "연세 하숙방9", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "목요일마다 고기 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562752 , lng:126.930215,
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"서문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      big_deposit: 100,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha19.jpg")),
     
     )

HasukHouse.create(
    division:"연대남문",
    id:20, user_id:2,
    hasuk_name: "연세 하숙방10", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "목요일마다 고기 파티하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 성산동", lat:37.562688 , lng:126.929598,
     
      #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"남문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"서문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"서대문우체국",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha20.jpg")),
     
     )     

HasukHouse.create(
    division:"정문(신촌역)",
    id:21, user_id:2,
    hasuk_name: "연세 하숙방11", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
   small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
     
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.558810 , lng:126.935077,
     
      #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha21.jpg")),
     
     )     
HasukHouse.create(
    division:"정문(신촌역)",
    id:22, user_id:2,
    hasuk_name: "연세 하숙방12", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
   
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.559006 , lng:126.935790,
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      big_deposit: 100,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha22.jpg")),
    
     )     

HasukHouse.create(
    division:"정문(신촌역)",
    id:23, user_id:2,
    hasuk_name: "연세 하숙방13", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
   
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.558547 , lng:126.935044,
    
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha23.jpg")),
    
     )     
     
HasukHouse.create(
    division:"정문(신촌역)",
    id:24, user_id:2,
    hasuk_name: "연세 하숙방14", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.559011, lng:126.934797,
    
     #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha24.jpg")),
     
     )     
     
     
HasukHouse.create(
    division:"정문(신촌역)",
    id:25, user_id:2,
    hasuk_name: "연세 하숙방15", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 서대문구 창천동", lat:37.558828 , lng:126.934266,
   
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    univ2:"연세",
    gate2:"남문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha25.jpg")),
     
     )
     
     
     
#이화여대 씨드

HasukHouse.create(
    division:"정문(이대역)",
    id:26, user_id:2,
    hasuk_name: "이화 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
   
    title: "고기 파티 안 하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.558215, lng:126.945186 ,
    
     #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    
    
     #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha26.jpg")),
    
    )

HasukHouse.create(
    division:"정문(이대역)",
    id:27, user_id:2,
    hasuk_name: "이화 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.558513 , lng:126.944703,
     #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha27.jpg")),
    )
    
HasukHouse.create(
    division:"정문(이대역)",
    id:28, user_id:2,
    hasuk_name: "이화 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.557845 , lng:126.944188,
     #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "연세대앞",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
     big_deposit: 100,
    admin_fee: true, 
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha28.jpg")),
     
     )

HasukHouse.create(
    division:"정문(이대역)",
    id:29, user_id:2,
    hasuk_name: "이화 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    title: "고기 파티 안 하는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.557505 , lng:126.943888,
     #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"이대",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "신촌기차역",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha29.jpg")),
     
     )

HasukHouse.create(
    division:"정문(이대역)",
    id:30, user_id:2,
    hasuk_name: "이화 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    
    
    title: "고기 파티 안 하는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.558572 , lng:126.944290 ,
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"이대",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "신촌기차역",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha30.jpg")),
     
    )


#이대 연대 겹치는 구역, 신촌기차역
HasukHouse.create(
    division:"신촌기차역",
    id:31, user_id:2,
    hasuk_name: "이화연대 하숙방1", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,

    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.557413 , lng:126.940074 ,
    
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"연세",
    gate2:"정문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
    #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"신촌기차역",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "신촌",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha31.jpg")),
    
    )

HasukHouse.create(
    division:"신촌기차역",
    id:32, user_id:2,
    hasuk_name: "이화연대 하숙방2", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.557451 , lng:126.941453,
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"연세",
    gate2:"정문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"신촌기차역",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"지하철",
    station2: "신촌",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      big_deposit: 150,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha32.jpg")),
    
     )
    
HasukHouse.create(
    division:"신촌기차역",
    id:33, user_id:2,
    hasuk_name: "이화연대 하숙방3", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
   
    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.558182 , lng:126.941501,
    
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"연세",
    gate2:"정문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "신촌기차역",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha33.jpg")),
   
     )

HasukHouse.create(
    division:"신촌기차역",
    id:34, user_id:2,
    hasuk_name: "이화연대 하숙방4", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    
    
    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.558365 , lng:126.940788,
    
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"이화",
    gate2:"정문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
      #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "신촌기차역",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha34.jpg")),
     
     )

HasukHouse.create(
    division:"신촌기차역",
    id:35, user_id:2,
    hasuk_name: "이화연대 하숙방5", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    
    
   
    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
    hasuk_house_description:"방 별로 창문��� 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.557157 , lng: 126.939345,
    
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"정문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"이화",
    gate2:"정문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
     #교통수단까지 거리 및 시간
    trans_kind1:"지하철",
    station1:"신촌",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "신촌기차역",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
     big_deposit: 150,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha35.jpg")),
    
    )


#이대 연대 겹치는 구역, 이대후문, 연대 동문
HasukHouse.create(
    division:"이대후문",
    id:36, user_id:2,
    hasuk_name: "이화연대 하숙방6", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    

    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
   hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.567185 , lng:126.946372 ,
   
   #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"동문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"이화",
    gate2:"후문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
    
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"이대부고",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "이대후문",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha36.jpg")),
     
    )

HasukHouse.create(
    division:"이대후문",
    id:37, user_id:2,
    hasuk_name: "이화연대 하숙방7", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 독막로 221-7", lat:37.567580 , lng:126.945884,
    
    #교문까지 거리 및 시간
    univ1:"연세",
    gate1:"동문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"이화",
    gate2:"후문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"이대부고",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "이대후문",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha37.jpg")),
    
     )
    
HasukHouse.create(
    division:"이대후문",
    id:38, user_id:2,
    hasuk_name: "이화연대 하숙방8", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,

title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 신수동 89-80", lat:37.567916 , lng:126.947123,
    
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"후문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"연세",
    gate2:"동문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"이대부고",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "이대후문",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
     
     big_deposit: 150,
    admin_fee: true, 
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha38.jpg")),
   
     )

HasukHouse.create(
    division:"이대후문",
    id:39, user_id:2,
    hasuk_name: "이화연대 하숙방9", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"잠만 자는 방", gender:"여성전용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, 
    oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
 
 title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
     hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울특별시 마포구 백범로 10길 24", lat:37.567091 , lng:126.946732,
    
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"후문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"연세",
    gate2:"동문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"이대부고",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "이대후문",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
    
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha39.jpg"))
   
     )

HasukHouse.create(
    division:"이대후문",
    id:40, user_id:2,
    hasuk_name: "이화연대 하숙방10", celPhone:"010-1234-5678", telPhone:"02-123-4567", contact_memo:"문자 주시면 답장드립니다.",
    hasuk_kind:"일반하숙", gender:"남녀공용",
    
    small_deposit: small_deposit.sample, 
    price_from: price_from.sample, 
    price_to: price_to.sample,
    miniroom_price_from: price_from.sample,
    miniroom_price_to: price_to.sample, oneroom_price_from: price_from.sample,
    oneroom_price_to: price_to.sample, 
    sleeping_only_price_from: price_from.sample, 
    mate_price_from: price_from.sample,
    least_contract: least_contract.sample,
    
    title: "빨래 일일이 걷어서 세탁기 돌려주는 집",
    hasuk_house_description:"방 별로 창문이 모두 비치되어 있습니다. 건물은 남동향으로 채광이 좋은 편입니다.", address:"서울 마포구 광성로6안길 14", lat:37.568180 , lng: 126.945954,
    
    #교문까지 거리 및 시간
    univ1:"이화",
    gate1:"후문", 
    distance_time1: distance_time_kind.sample, 
    distance1: distance_kind.sample,
    
    univ2:"연세",
    gate2:"동문", 
    distance_time2: distance_time_kind.sample, 
    distance2: distance_kind.sample,
     
     #교통수단까지 거리 및 시간
    trans_kind1:"버스",
    station1:"이대부고",
    trans_distance_time1: distance_time_kind.sample, 
    trans_distance1: distance_kind.sample,
    
    
    trans_kind2:"버스",
    station2: "이대후문",
    trans_distance_time2: distance_time_kind.sample, 
    trans_distance2: distance_kind.sample,
      big_deposit: 150,
    admin_fee: true,
     :main_img => File.open(File.join(Rails.root, "public/images/bangs/ha40.jpg"))
     
    )