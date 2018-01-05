class SubcategoriesController < ApplicationController
  before_action :set_subcategory
  layout "requests_layout", only: :requests
  def show
    @posts = @subcategory.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  def requests
    @requests = @subcategory.requests
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end
end
