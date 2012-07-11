home = lambda {|env| [200, {"Content-Type" => "text/html"}, ["Hello Orange!"]]}
builder = Rack::Builder.new do
  run home
end

run builder