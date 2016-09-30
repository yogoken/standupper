class Article < ApplicationRecord
  # tags
  acts_as_taggable

  # uploader
  mount_uploader :file, ArticleUploader

  # default per of paginate
  paginates_per 12

  scope :newly, -> { order(updated_at: :desc) }
end
