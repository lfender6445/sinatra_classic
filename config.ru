require File.join(File.dirname(__FILE__),'app','application.rb')

run Sinatra::Application
# run Rack::URLMap.new "/" => Sinatra::Application
