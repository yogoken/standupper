class TopController < ApplicationController
  def index
    @articles = Article.newly.page(params[:page])
  end
end
