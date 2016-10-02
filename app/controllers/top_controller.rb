class TopController < ApplicationController
  def index
    @articles = Article.newly.page params[:page]
    @newly_articles = Article.newly.limit(3)
  end
end
