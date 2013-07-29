require './my_framework'

class MyApp < MyFramework
  def initialize
    haml("index", :poem => "Hello World!")
  end
end


