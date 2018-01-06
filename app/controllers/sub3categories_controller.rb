class Sub3categoriesController < ApplicationController
  before_action :set_sub3category
  layout "requests_layout", only: :requests
  def show
    @posts = @sub3category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  def requests
    @requests = @sub3category.requests.sort(params[:sort])
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub3category
    @sub3category = Sub3category.find(params[:id])
  end
end
