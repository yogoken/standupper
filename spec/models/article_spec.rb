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
