# hello_red.ru
home = lambda do |env|
  [200, {"Content-Type" => "text/html"}, ["Hello Red!\n"]]
end

map '/' do
  run home
end