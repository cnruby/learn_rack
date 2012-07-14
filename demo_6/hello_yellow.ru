# hello_yellow.ru
home = lambda do |env|
  [200, {'Content-Type' => 'text/html'}, [File.read("./index.html")]]
end

map '/' do
  run home
end
