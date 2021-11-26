class UsersController < ApplicationController
  def index
    if @user.feedbacks.present?
      @user_feedbacks = @user.feedbacks
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # redirect to specific action
    else
      # render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :password)
    end

end
