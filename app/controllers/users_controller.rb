class UsersController < ApplicationController
  before_filter :authenticate_user!, :only => "account"
  def show
    @user = User.find(params[:id])
  end
  
  def account
     @user = current_user
     render "show"
  end
end
