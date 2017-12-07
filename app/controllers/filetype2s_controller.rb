class Filetype2sController < ApplicationController
  before_action :set_filetype2, only: [:show]
  def show
    @posts = @filetype2.posts
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filetype2
      @filetype2 = Filetype2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filetype2_params
      params.require(:filetype2).permit(:name)
    end
end

