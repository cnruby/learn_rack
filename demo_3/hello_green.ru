# rackup hello_green.ru
# open http://0.0.0.0:9292/

require 'rack'

run lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello world!"]] }