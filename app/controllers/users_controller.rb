class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

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
        flash[:notice] = "User was created sucessfull"
        format.html { redirect_to root_path }
      else 
        flash[:error] = @user.errors.full_messages
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User was deleted sucessfully"
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
        flash[:notice] = "User was updated sucessfully"
        format.html {  redirect_to root_path}
      else
        flash[:error] = @user.errors.full_messages
      end
    end
  end

  def mass_emails
    byebug
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end