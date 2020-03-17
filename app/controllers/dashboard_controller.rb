class DashboardController < ApplicationController
  before_action :authorize

  def index
    if current_user.role.eql? "Admin"
      @users = User.all
    else
      redirect_to user_path(current_user.id)
    end
  end
end
