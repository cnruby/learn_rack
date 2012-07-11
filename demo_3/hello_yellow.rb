# ruby hello_yellow.rb
# rackup hello_yellow.rb
# open http://0.0.0.0:9292/

require 'rack'

Rack::Handler::WEBrick.run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello world!"]] }, :Port => 9292