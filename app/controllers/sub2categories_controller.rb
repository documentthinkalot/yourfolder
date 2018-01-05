class Sub2categoriesController < ApplicationController
  before_action :set_sub2category
  layout "requests_layout", only: :requests
  def show
    @posts = @sub2category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  def requests
    @requests = @sub2category.requests
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub2category
    @sub2category = Sub2category.find(params[:id])
  end
end

