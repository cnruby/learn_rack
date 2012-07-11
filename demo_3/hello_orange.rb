# ruby hello_orange.rb
require 'rack'
puts lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello world!"]] }.call({})