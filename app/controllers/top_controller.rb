class TopController < ApplicationController
  def index
    @articles = Article.newly
  end
end
