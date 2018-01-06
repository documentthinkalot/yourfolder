class Sub4categoriesController < ApplicationController
  before_action :set_sub4category
  layout "requests_layout", only: :requests
  def show
    @posts = @sub4category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  def requests
    @requests = @sub4category.requests.sort(params[:sort])
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub4category
    @sub4category = Sub4category.find(params[:id])
  end
end
