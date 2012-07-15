# hello_yellow.ru
use Rack::ContentLength
use Rack::Runtime

home = lambda do |env|
  [200, {'Content-Type' => 'text/html'}, ["Hello Yellow!\n"]]
end

map '/' do
  run home
end