class TopController < ApplicationController
  def index
    @articles = Article.includes(:geinin, :tags).newly.page(params[:page])
    @newly_articles = Article.newly.limit(3)
    @geinins = Geinin.bigger
  end
end
