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
  bodies = [
    'a is great',
    'b is perfect',
    'c is not good',
    'd is absolutely fantastic',
    'e is soso'
  ]
  tags = [
    'IoT',
    'ruby on rails',
    'programming',
    'engineer',
    'facebook'
  ]
  desc 'Create dummy data for development environment'
  task create: %i(common) do
    logger.debug "creating dummy geinins..."
    1.upto(5) do |i|
      begin
        Geinin.create!(
          name: "geinin_#{i}"
        )
      rescue ActiveRecord::RecordInvalid => e
        puts "#{e}: skip"
      end
    end
    logger.debug "creating dummy articles..."
    geinin = Geinin.all
    1.upto(100) do |i|
      Article.create!(
        file:     File.new("public/facebook2.jpg"),
        title:    "#{i}: #{titles.sample}",
        body:     "#{i}: #{bodies.sample}",
        geinin:   geinin.sample,
        tag_list: tags.sample(rand(tags.length))
      )
    end
    logger.info "created dummy articles!"
  end
end
