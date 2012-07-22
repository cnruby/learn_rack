require 'erb'

home_view = <<VIEW
  Hello Red!
VIEW
rendered_view = ERB.new(home_view).result

home = lambda { |env| [200, {}, [rendered_view]] }

use Rack::ContentLength
use Rack::ContentType

map '/' do
  run home
end