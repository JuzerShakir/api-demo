class PostsController < ApplicationController
  def index
    @top_rated = Post.order(avg_rating: :desc).select(:title, :content)

    @ip_group = Post.select(:id, :author_ip).group(:author_ip)

    @login = Array.new

    @ip_group.each do | member |
      @login << member.user.username
      @login << member.user.password
    end

    if @post.feedbacks.present?
      @post_feedbacks = @post.feedbacks
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    # if user is present for the post
    if User.find(@post.user_id).present?
      post_validity
    else
      # create an empty user for the post
      @user = User.create()
      @post.user_id = @user.id
      post_validity
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :content, :user_id, :author_ip)
    end

    def post_validity
      if @post.invalid?
        # validation error => status 422
      elsif @post.save
        # status 200
        # redirect to some action
      else
        # Internal server error => status 500
      end
    end

end
