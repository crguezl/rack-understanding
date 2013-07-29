class EnvironmentOutput

  def initialize(app)
    @app = app
  end

  def call(env)
    p @app
    out = ENV.to_a.reduce([]) { |x, y| x += [ "<li> #{y[0]} => #{y[1]}" ] }
    unless @app.nil? 
      code, header, body = @app.call(env)
      out = body + out
      return [code, header, out ] 
    end
    return [ "200", { "Content-Type" => "text/html"}, out ]
  end
end

require './haiku'
require 'haml'

class MyApp 
  def call(env)
    poem  = Haiku.new.random
    template = File.open("views/index.haml").read
    engine = Haml::Engine.new(template)
    out = engine.render(Object.new, :poem => poem)
    puts "POEM:\n#{out}"
    [ "200", { "Content-type" => "text/html" }, [ out ] ]
  end
end

use EnvironmentOutput
run MyApp.new
