home = lambda {|env| [200, {"Content-Type" => "text/html"}, ["Hello Red!"]]}
builder = Rack::Builder.new

run builder.run(home) 