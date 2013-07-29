require './my_framework'
require './haiku'

class MyApp < MyFramework

  def initialize
    haml("index", :poem => Haiku.new.random)
  end

end


