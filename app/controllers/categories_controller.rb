class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :requests]
  layout "requests_layout", only: :requests
  def show
    @posts = @category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  def requests
    @requests = @category.requests.sort(params[:sort])
    @request  = @requests.build(user_id: current_user.id) if current_user
    @response = Response.all.build(user_id: current_user.id) if current_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
