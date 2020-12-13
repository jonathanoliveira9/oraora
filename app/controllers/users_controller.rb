class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html
    end 
  end

  def new
    @user = User.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {  }
      else 
        format.html
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html {  }
      else
        format.html {  }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end