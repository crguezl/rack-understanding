class EnvironmentOutput

  def initialize(app)
    @app = app
  end

  def call(env)
    p @app
    out = ""
    ENV.each do |k,v|
      out += "<li> #{k} => #{v}"
    end
    unless @app.nil? 
      code, header, body = @app.call(env)
      return [code, header, body + [out ] ] 
    end
    return [ "200", { "Content-Type" => "text/html"}, out ]
  end
end

class MyApp 
  def call(env)
    [ "200", { "Content-type" => "text/html" }, ["<h1>Hello World!</h1>"]]
  end
end

use EnvironmentOutput
run MyApp.new
