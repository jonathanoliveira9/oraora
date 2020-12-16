class DashboardsController < ApplicationController
  def index
    @pagy, @users = pagy(User.all)
  end
end