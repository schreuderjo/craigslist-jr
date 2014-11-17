class ArticlesController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @article =  @category.articles.build
    @button = "Create Article"
  end

  def create
    @category = Category.find(params[:cat_id])
    @article = Article.new(title: params[:article][:title], description: params[:article][:description], price: params[:article][:price], location: params[:article][:location], category_id: params[:cat_id])
    if @article.save
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    @button = "Save Edit"
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(title: params[:article][:title], description: params[:article][:description], price: params[:article][:price], location: params[:article][:location], category_id: params[:cat_id])
      redirect_to category_path(@category)
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @category = Category.find(params[:category_id])
    @article.destroy
    redirect_to category_path(@category)
  end

  private
  def article_params
    params.require(:article).permit(:title, :description, :price, :location)
  end
end
