namespace :dummy do
  titles = [
    'social network',
    'inception',
    'mark zuckerberg',
    'steve jobs',
    'apple',
    'google',
    'twitter'
  ]
  desc 'Create dummy data for development environment'
  task create: %i(common) do
    logger.debug "creating dummy geinins..."
    1.upto(5) do |i|
      Geinin.create!(
        name: "geinin:#{i}"
      )
    end
    logger.debug "creating dummy articles..."
    geinin = Geinin.all
    1.upto(100) do |i|
      Article.create!(
        file:   File.new("public/sample.jpg"),
        title:  "#{i}: #{titles.sample}",
        body:   "#{i}: #{Faker::Lorem.paragraph}",
        geinin: geinin.sample
      )
    end
    logger.info "created dummy articles!"
  end
end
