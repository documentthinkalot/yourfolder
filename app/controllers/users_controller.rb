class UsersController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!, only: [:likes]

def show
  @posts = @user.posts.sort(params[:sort]).page(params[:page]).per(12)
end

def likes
  @posts = @user.like_posts.sort(params[:sort]).page(params[:page]).per(12)
end

def info
end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :sex, :company, :circumstances, :position, :age, :number, :place_id, :industry_id, :occupation_id, :sex_status, :age_status, :industry_status, :occupation_status)
  end

end
