FactoryGirl.define do
  factory :geinin do
    sequence :name do |n|
      "geinin:#{n}"
    end
  end
end
