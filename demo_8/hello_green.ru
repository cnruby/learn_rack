# hello_green.ru
use Rack::ContentLength
use Rack::Runtime

home = lambda do |env|
  response = Rack::Response.new
  response.write "Hello Green!"
  response.headers["Content-Type"] = "text/html"
  response.finish
end

map '/' do
  run home
end