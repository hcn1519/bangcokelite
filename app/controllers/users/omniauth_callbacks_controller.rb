class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  #def naver
  #  @user = User.from_omniauth(request.env["omniauth.auth"])

  #  if @user.persisted?
  #    sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
  #    set_flash_message(:notice, :success, :kind => "Naver") if is_navigational_format?
  #  else
  #    session["devise.naver_data"] = request.env["omniauth.auth"]
  #    redirect_to new_user_registration_url
  #  end
  #end
  
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
    if request.env["omniauth.auth"].info.email.blank?
      redirect_to "/users/auth/facebook?auth_type=rerequest&scope=email"
    end
  end

  def failure
    redirect_to root_path
  end
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || session[:previous_url] || root_path
  end
  #def kakao
  #  @user = User.from_omniauth(request.env["omniauth.auth"])

  #  if @user.persisted?
  #    sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
  #    set_flash_message(:notice, :success, :kind => "Kakao") if is_navigational_format?
  #  else
  #    session["devise.kakao_data"] = request.env["omniauth.auth"]
  #    redirect_to new_user_registration_url
  #  end
  #end
  
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
