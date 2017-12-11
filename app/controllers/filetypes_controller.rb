class FiletypesController < ApplicationController
  before_action :set_filetype, only: [:show]
  def show
    @posts = @filetype.posts.sort(params[:sort]).page(params[:page]).per(12)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filetype
      @filetype = Filetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filetype_params
      params.require(:filetype).permit(:name)
    end
end
