source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "bootsnap", require: false
gem "simple_form"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri]
end

group :development do
  gem "web-console"
  gem "standard"
  gem "rubocop"
  gem "syntax_tree"
  gem "htmlbeautifier"
  gem "erb_lint"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# Use Redis for Action Cable
gem "redis", "~> 4.0"
gem "devise", "~> 4.8.1"
