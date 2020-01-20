class ArticlesController < ApplicationController
	def index
		@articles = Article.all
		
	end

	def show
		@article = Article.find_by(id: params[:id])
	end

	def new
		@article = Article.new
	end

	def create 
		@article = Article.new(params[:article].permit(:ArticleId,:description))
		if @article.save
		 	redirect_to article_path(@article)
		else
			render :new
		end
	end

	def destroy
		@article = Article.find_by(id: params[:id])
		@article.destroy
		redirect_to articles_path
	end
end
