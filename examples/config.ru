require '../lib/rambutan'
 
Dir[File.join(".", "controllers/*.rb")].each do |f|
  require f
end
 
app = Rambutan::RoutesSet.new do
  get '/posts' => 'posts#index'
end
 
run app.router