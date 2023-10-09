class LoginsController < ApplicationController

  #create a log the use in
  def create
    if user = user.authenticate(params[:username] , params[:password])
      #save the user id in sessions so it can se used in the subsequent requests
      session[:current_user_id] = user.id
      redirect_to root_url
    end

    skip_before_action :require_login, only: [:new, :create]
    #:only is used to skip the filter for these actions
    #:except works the other way
  end
  end
end
