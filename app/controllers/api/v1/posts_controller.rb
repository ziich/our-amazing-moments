class Api::V1::PostsController < Api::V1::BaseController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @post.destroy
    head :no_content
  end



  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :date, :user )
  end

  def render_error
    render json: { errors: @story.errors.full_messages }, status: :unprocessable_entity
  end

end
