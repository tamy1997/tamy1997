class ArticlesController < ApplicationController
	def index
		@articles=Article.all
	end

	# def new
	# 	#debugger
	# 	@user = User.find(params[:id])
	# end

	def create
		
	  	# @user=current_User.find(params[:article][:user_id])
	  	@article=current_user.articles.create(article_params)
	  	redirect_to root_path

  end

  def show
   @article = Article.find(params[:id])
   @comment = @article.comments.new
   @comments = @article.comments.all
  end
  	def edit
  		
  		@article= Article.find(params[:id])
  	end

  	def update
  		@article= Article.find(params[:id])
  		@article.update(article_params)
  		redirect_to root_path

  	end

  	def active
  		@article= Article.find(params[:id])
  		if (@article.active == false)
  			@article.update(active: true)
  		end
  		redirect_to root_path

  	end

  	

  	def destroy
  		@article=Article.find(params[:id])
  		@article.delete
  		redirect_to root_path
  	end

  private
  def article_params
  	params.require(:article).permit(:title,:description,:created_by,:active)
  end

end
