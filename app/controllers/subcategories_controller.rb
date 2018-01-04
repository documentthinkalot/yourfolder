class SubcategoriesController < ApplicationController
  before_action :set_subcategory
  def show
    @posts = @subcategory.posts.sort(params[:sort]).page(params[:page]).per(12)
  end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end
end
