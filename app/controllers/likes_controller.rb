class LikesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  def create
    @like = Like.new(
    user_id: current_user.id,
    post_id: params[:post_id]
    )
    @like.save
    @post = @like.post
    @likes_count = Like.where(post_id: @post.id).count
    @current_user_like = Like.find_by(user_id: current_user.id, post_id: @post.id)
  end

  def destroy
    @like = Like.find_by(
    user_id: current_user.id,
    post_id: params[:id]
    )
    @like.destroy
    @post = Post.includes(:user).find(params[:id])
    @likes_count = Like.where(post_id: params[:id]).count
    @current_user_like = Like.find_by(user_id: current_user.id, post_id: params[:id])
  end
end
