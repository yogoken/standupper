namespace :dummy do
  desc 'Create dummy data for development environment'
  task create: %i(common) do
    logger.debug "creating dummy article..."
    100.times do |i|
      Article.create!(
        file:  File.new("public/sample.jpg"),
        title: "#{i}: #{Faker::Name.title}",
        body:  "#{i}: #{Faker::Lorem.paragraph}"
      )
    end
    logger.info "created dummy articles!"
  end
end
