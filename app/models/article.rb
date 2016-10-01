class Article < ApplicationRecord
  # tags
  acts_as_taggable
  # uploader
  mount_uploader :file, ArticleUploader

  scope :newly, -> { order(updated_at: :desc) }
end
