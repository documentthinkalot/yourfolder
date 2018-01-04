class Sub6categoriesController < ApplicationController
  before_action :set_sub6category
  def show
    @posts = @sub6category.posts.sort(params[:sort]).page(params[:page]).per(12)
  end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub6category
    @sub6category = Sub6category.find(params[:id])
  end
end
