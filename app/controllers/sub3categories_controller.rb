class Sub3categoriesController < ApplicationController
  before_action :set_sub3category
  def show
    @posts = @sub3category.posts.order("created_at desc").page(params[:page]).per(12)
  end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_sub3category
    @sub3category = Sub3category.find(params[:id])
  end
end
