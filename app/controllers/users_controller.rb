class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def show_current_user
    @user = current_user
    render action: :show
  end
end
