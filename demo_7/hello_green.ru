# hello_yellow.ru
@root = File.expand_path(File.dirname(__FILE__))

home = lambda do |env|
  path = Rack::Utils.unescape(env['PATH_INFO'])
  index_file = @root + "#{path}/index.html"

  if File.exists?(index_file)
    [200, {'Content-Type' => 'text/html'}, [File.read(index_file)]]
  else
    Rack::Directory.new(@root).call(env)
  end
end

map '/' do
  run home
end
