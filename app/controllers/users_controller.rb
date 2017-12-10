class UsersController < ApplicationController
  before_action :set_user

def show
  @posts = @user.posts.order("created_at desc").page(params[:page]).per(12)
end

def likes
  @posts = @user.like_posts.order("created_at desc").page(params[:page]).per(12)
end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :sex, :company, :circumstances, :position, :age, :number, :place_id, :industry_id, :occupation_id)
  end

end
