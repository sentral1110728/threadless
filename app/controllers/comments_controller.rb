class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to article_path(@article), notice: 'コメントしました'
    else
      redirect_to article_path(@article), notice: 'コメントできませんでした'
    end
  end

  private

  def comment_params
    params.require(:comment)
          .permit(:comment)
          .merge(article_id: params[:article_id], user_id: current_user.id)
  end
end
