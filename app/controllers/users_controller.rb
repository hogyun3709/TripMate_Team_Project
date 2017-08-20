class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.order(:created_at)
  end

  def show

    @user = User
    .find_by_id(params[:id])
  end

end
