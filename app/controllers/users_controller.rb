class UsersController < ApplicationController
  load_and_authorize_resource :user

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to @user, notice: "User updated"
    else
      redirect_to edit_user_path(@user, error: "Update failed")
    end
  end

end
