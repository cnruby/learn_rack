require './content_type_html.rb'

home = lambda { |env| [200, {}, ["Hello Yellow!"]] }

use ContentTypeHTML

map '/' do
  run home
end