namespace :dummy do
  desc 'Create dummy data for development environment'
  task create: :environement do
    100.times do |i|
      Article.create!(
        file:     File.new("public/sample.jpg"),
        title:    "#{i}: #{Faker::Name.title}",
        content:  "#{i}: #{Faker::Lorem.paragraph}"
      )
    end
  end
end
