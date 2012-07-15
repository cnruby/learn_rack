# hello_orange.ru
use Rack::ContentLength

home = lambda do |env|
  [200, {'Content-Type' => 'text/html'}, ["Hello Orange!\n"]]
end

map '/' do
  run home
end