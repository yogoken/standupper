namespace :dummy do
  desc 'Create dummy data for development environment'
  task create: :environement do
    100.times do |i|
      Article.create!(title: "#{1}: #{Faker::Name.title}", content: "#{1}: #{Faker::Lorem.paragraph}")
    end
  end
end
