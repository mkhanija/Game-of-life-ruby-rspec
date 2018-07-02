require_relative "universe"

module GameOfLife

  universe = GameOfLife::Universe.new("glider")

  universe.run()

end
