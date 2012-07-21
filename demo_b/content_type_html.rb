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