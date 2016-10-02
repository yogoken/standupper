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

include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :article do
    file    { fixture_file_upload Rails.root.join('public', 'sample.gif'), 'image/article' }
    title   Faker::Name.title
    content Faker::Lorem.paragraph
  end
end
