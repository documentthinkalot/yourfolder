class Sub4categoriesController < ApplicationController
  before_action :set_sub4category
  def show
    @posts = @sub4category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub4category
    @sub4category = Sub4category.find(params[:id])
  end
end
