class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if current_user.admin
    @users = User.all
    else
    redirect_to root_path
    flash[:error] = "this page is not available"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
end