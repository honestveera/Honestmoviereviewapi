source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.4'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
#User  Authentication gem
gem 'devise'
#Design Using bootstrap
gem 'bootstrap-sass', '~> 3.3.5'
#api  creation using active_model_serializers
gem 'active_model_serializers'
#View Template
gem 'haml-rails'
#Console
gem 'pry-rails'

group :development, :test do
  #Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  #Unit testing gem
  gem 'rspec-rails'
  #Fixture replacement library
  gem 'factory_girl_rails'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda'
  gem 'faker'
end

group :production do
  gem 'heroku'
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
