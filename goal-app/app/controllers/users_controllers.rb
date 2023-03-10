class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save!
      redirect_to users_url
    else
      render json: "Couldn't Create User"
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end