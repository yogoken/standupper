# == Schema Information
#
# Table name: geinins
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  name           :string(255)      default("unknown geinin"), not null
#  articles_count :integer          default(0)
#
# Indexes
#
#  index_geinins_on_name  (name) UNIQUE
#

class Geinin < ApplicationRecord
  # associations
  has_many :articles

  # validations
  validates :name, uniqueness: true

  scope :bigger, -> { order(articles_count: :desc) }
end
