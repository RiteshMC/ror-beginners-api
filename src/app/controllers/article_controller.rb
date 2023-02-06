class ArticleController < ApplicationController
  before_action :set_article, only: %i[ show update destroy ]

  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    unless @article.save
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    unless @article.update(article_params)
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { "error": "article not found!" }, :status => 404
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :content, :status)
  end
end
