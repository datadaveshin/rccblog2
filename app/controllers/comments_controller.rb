class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:id])

    if @post.comments.create(comment.params)
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      redirect_to @post, alert: 'Error creating comment.'
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:author, :body)
  end
end
