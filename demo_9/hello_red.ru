# hello_red.ru
require "rack/google_analytics"
use Rack::GoogleAnalytics, :web_property_id => 'UA-126050-5'

home = lambda do |env|
  [200, {'Content-Type' => 'text/html'}, ["<html><body>Hello Red!</body></html>"]]
end

map '/' do
  run home
end