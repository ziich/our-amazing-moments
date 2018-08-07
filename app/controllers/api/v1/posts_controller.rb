class Api::V1::PostsController < Api::V1::BaseController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end
