class UsersController < ApplicationController
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
        format.html { redirect_to root_path }
      else 
        # ALERT
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html {  redirect_to root_path}
      else
        # Alert
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end