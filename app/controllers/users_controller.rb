class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def update
    @user = current_user
    if @user.update(params.require(:user).permit(:profile_image, :username, :profile))
      flash[:notice] = "更新しました"
      redirect_to profile_users_path
    else
      render "edit"
    end
  end
  
  def account
    @user = current_user
  end
  
  def profile
    @user = current_user
  end
end
