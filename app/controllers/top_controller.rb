class TopController < ApplicationController
  def index
    @articles = Article.newly.page params[:page].includes(:geinin)
    @newly_articles = Article.newly.limit(3)
    @geinins = Geinin.bigger
  end
end
