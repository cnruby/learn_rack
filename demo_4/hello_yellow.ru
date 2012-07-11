home = lambda {|env| [200, {"Content-Type" => "text/html"}, ["Hello Yellow!"]]}
version = lambda {|env| [200, {"Content-Type" => "text/html"}, ["learn_rack 0.3"]]}

builder = Rack::Builder.new do
  map '/' do
    run home
  end
  map '/version' do
   run version
  end
end

run builder