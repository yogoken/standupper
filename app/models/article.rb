# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  geinin_id  :integer
#  title      :string(255)
#  body       :text(65535)
#  file       :string(255)      default("sample.jpg")
#
# Indexes
#
#  index_articles_on_geinin_id  (geinin_id)
#
# Foreign Keys
#
#  fk_rails_c4bcb5d906  (geinin_id => geinins.id)
#

class Article < ApplicationRecord
  # associations
  belongs_to :geinin, counter_cache: true
  # tags
  acts_as_taggable

  # uploader
  mount_uploader :file, ArticleUploader

  # default per of paginate
  paginates_per 24

  scope :newly, -> { order(updated_at: :desc) }
end
