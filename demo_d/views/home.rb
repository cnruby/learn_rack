require 'erb'

class View
  def rendered_view
    home_view = <<VIEW
  Hello Yellow!
VIEW
  rendered_view = ERB.new(home_view).result
  end
end