# frozen_string_literal: true

class ApplicationController < ActionController::Base
#before_action filter
#filters are inherited throughout your application 
  # before_action :require_login
  # private
  #   def require_login
  #     unless logged_in?
  #       flash[:error] = "You must be logged in to access this section."
  #       redirect_to new_login_url
  #   end 
  # end

  # def current_user
  #   @_current_user ||= session[:current_user_id] &&
  #     User.find_by(id: session[:current_user_id])
  # end
end



