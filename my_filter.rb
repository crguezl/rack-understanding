require './haiku'
class MyFilter

  def initialize(app = nil)
    @app = app
  end

  def call(env)
    status = "200"
    header = { "Content-Type" => "text/html" }
    body = [ "" ]

    status, header, body = @app.call(env) if @app
    body =  [ "<!DOCTYPE html>\n<html>\n<body>" ] +
            body + 
            [ "<p>#{Haiku.new.random}</p>" ] +
            [ "</body>\n</html>\n" ]
    [status, header, body]
  end
end
