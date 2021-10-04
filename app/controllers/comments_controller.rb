class CommentsController < ApplicationController
	def new
		@article=Article.find(params[:id])
	end
  def create
     @article = Article.find(params[:comment][:article_id])
     @comment = @article.comments.create(comment_params)
     @comments = @article.comments
      respond_to do |format|
      format.js
     # redirect_to blog_path(id:@blog.id)
   end
  end

  def popup
    
  end

  def show
  @comment =Comment.find(params[:id])
  end

  private

	def comment_params
   params.require(:comment).permit(:user_id,:article_id,:post)
  end
end

