module V1
  class PostsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:index, :show]

    # GET /v1/posts
    # Get all the posts
    def index
      @posts = Post.includes(:user).order(created_at: :desc).all
      render json: @posts, each_serializer: PostsSerializer
    end

    def show
      @post = Post.find(params[:id])
      render json: @post, serializer: PostSerializer
    end

    # POST /v1/posts
    # Add a new post
    def create
      @post = Post.new(post_params)

      if @post.save
        render json: @post, serializer: PostSerializer
      else
        render json: { error: t('post_create_error') }, status: :unprocessable_entity
      end
    end

    private

    def post_params
      params.require(:post).permit(:title, :body, :post_image).merge(user: current_user)
    end

  end
end
