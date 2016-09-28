class Article < ApplicationRecord
  # tags
  acts_as_taggable
  # uploader
  mount_uploader :article, ArticleUploader
end
