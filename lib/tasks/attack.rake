namespace :tasks do
  # bundle exec rake tasks:attack[543200]
  desc "Generate a set of lotto numbers using a given seed."
  task :attack, [:seed] => :environment do |t, args|
    generator = Random.new(args[:seed].to_i)
    20.times.each do
      puts 6.times.map { generator.rand(49) + 1 }.join(" ")
    end
  end
end
