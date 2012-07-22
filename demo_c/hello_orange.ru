require 'haml'

home_view = <<VIEW
!!!
%html
  %head
  %body= message
VIEW
rendered_view = Haml::Engine.new(home_view).render Object.new, {:message => 'Hello Orange!'}

home = lambda { |env| [200, {}, [rendered_view]] }

use Rack::ContentLength
use Rack::ContentType

map '/' do
  run home
end
