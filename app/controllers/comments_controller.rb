class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to tweet_path(params[:tweet_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(tweet_id: params[:tweet_id])
  end
end
