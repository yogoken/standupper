class ArticlesController < ApplicationController
  def show
    @article = Article.includes(:taggings).find(params[:id])
    tags = @article.tag_list
    @related_articles = Article.includes(:tag_taggings, :tags).tagged_with(tags)
  end
end
