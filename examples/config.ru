lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rambutan'

Dir[File.join(".", "controllers/*.rb")].each do |f|
  require f
end

app = Rambutan::RoutesSet.new do
  get '/posts' => 'posts#index'
end

run app.router
