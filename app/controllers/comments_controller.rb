class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = @topic.comment.new(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :author)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
