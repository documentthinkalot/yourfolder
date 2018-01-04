class Sub5categoriesController < ApplicationController
  before_action :set_sub5category
  def show
    @posts = @sub5category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub5category
    @sub5category = Sub5category.find(params[:id])
  end
end
