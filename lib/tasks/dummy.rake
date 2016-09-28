namespace :dummy do
  desc 'Create dummy data for development environment'
  task create: :environment do
    100.times do |i|
      Article.create!(
        file:  File.new("public/sample.jpg"),
        title: "#{i}: #{Faker::Name.title}",
        body:  "#{i}: #{Faker::Lorem.paragraph}"
      )
    end
  end
end
