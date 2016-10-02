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

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#file' do
    it 'should uniq' do
      article = create(:article)
      other_article = build(:article)
      expect(other_article).to be_valid
    end
  end
end
