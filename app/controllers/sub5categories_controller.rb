class Sub5categoriesController < ApplicationController
  before_action :set_sub5category
  layout "requests_layout", only: :requests
  def show
    @posts = @sub5category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  def requests
    @requests = @sub5category.requests
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub5category
    @sub5category = Sub5category.find(params[:id])
  end
end
