require 'haml'

class MyFramework
  attr_accessor :response

  def initialize
    @response = []
  end

  def haml(template, locals)
    template = File.open("views/#{template}.haml").read
    engine = Haml::Engine.new(template)
    @response = [ engine.render(Object.new, locals) ]
  end

  def call(env)
    [ "200", { "Content-type" => "text/html" }, @response ]
  end
end


