require './views/home'

home = lambda { |env| [200, {}, [View.new.rendered_view]] }

use Rack::ContentLength
use Rack::ContentType

map '/' do
  run home
end