class EnvironmentOutput

  def initialize(app)
    @app = app
  end

  def call(env)
    p @app
    return @app.call(env) unless @app.nil?
    return [ "200", { "Content-Type" => "text/html"}, ""]
  end
end

class MyApp 
  def call(env)
    [ "200", { "Content-type" => "text/html" }, ["<h1>Hello World!</h1>"]]
  end
end

use EnvironmentOutput
run MyApp.new
