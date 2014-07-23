class CommentsController < ApplicationController
  def create
    @comment = Comment.new({message: params["comment"]["message"], commentable_id: params["comment"]["commentable_id"], commentable_type: params["comment"]["commentable_type"]})
    if @comment.save
      redirect_to @comment.commentable
    end
  end

  private
  def comment_params # this doesn't work given my new methods
    params.require(:comment).permit(:message, :video_id)
  end
end
