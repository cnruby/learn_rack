# hello_red.ru
#use Rack::ContentLength

home = lambda do |env|
  [200, {'Content-Type' => 'text/html'}, ["Hello Red!"]]
end

map '/' do
  run home
end