class ContentTypePlain
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    headers.merge!( 'Content-Type' => 'text/plain' )
    return [status, headers, body]
  end
end

home = lambda { |env| [200, {}, ["Hello Orange!"]] }

use ContentTypePlain

map '/' do
  run home
end