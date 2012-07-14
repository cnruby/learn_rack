# hello_orange.ru
home = lambda do |env|
  params = Rack::Request.new(env).params
  # puts params.class # Hash
  # puts params.inspect.class # String
  [200, {"Content-Type" => "text/html"}, ["Hello #{params['color']}!\n"]]
end

map '/' do
  run home
end