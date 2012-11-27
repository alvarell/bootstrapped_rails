class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def authorize_admin!
    unless current_user.try :has_role?, :admin
      flash[:error] = "You aren't an admin!"
      redirect_to root_path
    end
  end

end
