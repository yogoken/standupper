include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :article do
    file    { fixture_file_upload Rails.root.join('public', 'sample.gif'), 'image/article' }
    title   Faker::Name.title
    content Faker::Lorem.paragraph
  end
end
