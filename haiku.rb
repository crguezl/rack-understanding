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
      are plumes of pampas grass."
    ]

  end

  def random
    @poems[rand @poems.length].gsub(/\n *|$/,"<br />\n")
  end
end
