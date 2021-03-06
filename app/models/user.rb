class User < ActiveRecord::Base
  has_many :attachments
  
  has_one :rating_for_hasuk_house
  
  has_many :hasuk_houses, dependent: :destroy
  has_many :favorite_hasuk_houses
  has_many :favorites, through: :favorite_hasuk_houses, source: :hasuk_house
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :authentication_keys => [:login]
  devise :omniauthable, :omniauth_providers => [:facebook]
  
 #validates :email, uniqueness: true
  
  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
  
  def email_required?
    false
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end
  
  #이메일 없이 로그인할 수 있게 해주는 부분
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_h).first
    end
  end
  
  #페이스북 로그인
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
    end
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        user.name = data["name"] if user.name.blank?
      end
    end
  end
  
end
