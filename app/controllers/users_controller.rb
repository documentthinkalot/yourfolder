class UsersController < ApplicationController
  before_action :set_user

def show
  @posts = @user.posts
end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :sex, :company, :circumstances, :position, :age, :number, :place_id, :industry_id, :occupation_id)
  end

end
