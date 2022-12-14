source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

gem "bcrypt"

gem 'securerandom'

gem 'active_model_serializers'

gem 'aws-sdk-s3', '~> 1.114'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

gem 'thin'

# gem 'active_storage_validations'

gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  gem 'rswag-api'
  
  gem 'rswag-ui'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
end


gem "mpesarb", "~> 0.3.4"

gem "jwt", "~> 2.5"

gem 'rspec-rails'

gem 'rswag'
