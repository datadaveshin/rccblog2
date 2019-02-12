class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])

    if comments_params[:email] == "address" && @post.comments.create(comments_params)
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      redirect_to @post, alert: "the following errors occurred #{@post.errors.inspect}"
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:author, :body, :email)
  end
end
