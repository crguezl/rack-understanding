#encoding: utf-8
class Haiku

  def initialize 
    @poems = [
      "An old silent pond...
      A frog jumps into the pond,
      splash! Silence again.",

      "Autumn moonlight—
      a worm digs silently
      into the chestnut.",

      "Lightning flash—
      what I thought were faces
      are plumes of pampas grass.",

      "We are but flyspecks 
      On that window pane of life 
      The window cleaner!",

      "Lightning flash—
      what I thought were faces
      are plumes of pampas grass.",

      "A summer river being crossed
      how pleasing
      with sandals in my hands!",

      "Light of the moon
      Moves west, flowers' shadows
      Creep eastward.",

      "Feline snap cat like
      Actress purrs gesticulates
      Shadow puppet growls",

      "Passionate lips cold
      Presses fingers curled tresses
      Street corner embrace"


    ]

  end

  def random
    @poems[rand @poems.length].gsub(/\n *|$/,"<br />\n")
  end
end
