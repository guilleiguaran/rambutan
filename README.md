# Rambutan

Ruby web microframework with Rails-ish controllers and routes.

## Installation

Add this line to your application's Gemfile:

    gem 'rambutan'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rambutan

## Usage

Setup the application in your config.ru file:

```ruby
# require the gem
require 'rambutan'

# Load controllers in controllers/ folder
# Check examples/controllers/posts_controller.rb for an example
# Remember also to put your views under views/ folder
Dir[File.join(".", "controllers/*.rb")].each do |f|
  require f
end

# Setup routes (posts#index will point to PostsController#index)
app = Rambutan::RoutesSet.new do
  get '/posts' => 'posts#index'
end

# Run application
run app.router
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
