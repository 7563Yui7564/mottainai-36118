class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to creation_path(@comment.creation)
    else
      @creation = @comment.creation
      @comments = @creation.comments
      render "creations/show"
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id,
    creation_id: params[:creation_id])
  end
end
