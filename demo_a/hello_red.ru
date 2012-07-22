class ContentTypeHTML
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    headers.merge!( 'Content-Type' => 'text/html' )
    return [status, headers, body]
  end
end

home = lambda { |env| [200, {}, ["Hello Red!"]] }

use ContentTypeHTML

map '/' do
  run home
end