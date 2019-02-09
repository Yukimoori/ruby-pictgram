class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    # @comment = current_user.comments.new(comment_params)
    #
    # if @comment.save
    #   redirect_to topics_path,success:'投稿に成功しました'
    # else
    #   flash.now[:danger]='投稿に失敗しました'
    #   render:new
    # end
    @comment = Comment.create(create_params)
    # binding.pry
      if @comment.persisted?
        redirect_to topics_path, success: 'コメントの投稿に成功しました'
      else
        redirect_to new_topic_comment_path, danger: 'コメントの投稿に失敗しました'
      end
    end

    private
    # def content_params
    #   params.require(:content).permit(:content)
    # end
    def create_params
      params.require(:comment).permit(:content).merge(user_id: current_user.id, topic_id: params[:topic_id])
    end
end
