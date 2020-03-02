class ApplicationController < ActionController::API
  before_action :set_locale
  include ExceptionsManager

  rescue_from CanCan::AccessDenied do |exception|
    render json: { message: exception.message }, status: 403
  end

  def current_user
    if token
      @current_user ||= User.find(token[:user_id])
    else
      @current_user ||= nil
    end
  end

  def logged_in?
    !current_user.nil?
  end

  private

  def token
    value = request.headers[:Authorization]
    return if value.blank?
    @token ||= JsonWebToken.decode(value.split(" ").last)
  end

  def set_locale
    I18n.locale = "en"
  end
end
