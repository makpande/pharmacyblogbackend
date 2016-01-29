source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'rails-api', '~> 0.4.0'
gem 'active_model_serializers', '~> 0.8.3' # NOTE: not the 0.9
gem 'devise', '~> 3.4.1'
group :development do
  gem 'sqlite3', '~> 1.3.11'
end
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'thin'
gem 'rack-cors',            require: 'rack/cors'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'faker'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
