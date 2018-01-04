class Sub2categoriesController < ApplicationController
  before_action :set_sub2category
  def show
    @posts = @sub2category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub2category
    @sub2category = Sub2category.find(params[:id])
  end
end

