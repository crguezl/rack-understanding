require './my_framework'
require './haiku'

class MyApp < MyFramework

  def initialize
    get("index", :poem => Haiku.new.random)
  end

end

run MyApp.new
