class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected

  def allow_only_committees!
    redirect_to root_path unless user_signed_in? and current_user.is_committee
  end
end
