class TopController < ApplicationController
  def index
    @articles = Article.includes(:geinin).newly.page(params[:page])
    @newly_articles = Article.newly.limit(3)
    @geinins = Geinin.bigger
  end
end
