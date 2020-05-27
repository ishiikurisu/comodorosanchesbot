task default: %w[test]
API = ENV['API'] || nil
WHERE = ENV['WHERE'] || './test/test_recipes'

desc "Starts the bot"
task :run do
    ruby 'app/main.rb', API, WHERE
end

desc "Unit tests"
task :test do
    ruby 'test/test.rb'
end
