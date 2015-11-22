class ArticlesController < ApplicationController
    def index 
    end

    def new
    end


    def show
        @article = Article.find(params[:id])
    end 

    def create
        @article = Article.new(params[:article])
        
        @article.save
        redirect_to @article
    end
end
