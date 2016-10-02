namespace :dummy do
  desc 'Create dummy data for development environment'
  task create: %i(common) do
    logger.debug "creating dummy geinins..."
    1.upto(5) do |i|
      Geinin.create!(
        name: "geinin:#{i}"
      )
    end
    logger.debug "creating dummy articles..."
    1.upto(100) do |i|
      Article.create!(
        file:  File.new("public/sample.jpg"),
        title: "#{i}: #{Faker::Name.title}",
        body:  "#{i}: #{Faker::Lorem.paragraph}"
      )
    end
    logger.info "created dummy articles!"
  end
end
