class Api::UsersController < ApplicationController

  def create
    #
    @user = User.new({name: params[:name], email: params[:email], password: params[:password]})
    if @user.save
      log_in(@user)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  # def search
  #   @user = User.find_by(name: params[:name])
  #   if @user
  #     render "api/users/show"
  #   else
  #     render json: ["User does not exist"], status: 404
  #   end
  # end

  def index
    @users = User.all
    render 'api/users/index'
    # if params[:query].present?
    #   @users = User.where('name ~ ?', params[:query])
    # else
    #   @users = User.none
    # end
  end

  def recent_activity
    @user = current_user
    render 'api/users/recent_activity'
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
