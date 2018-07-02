require_relative "universe"

module GameOfLife
  
  universe = GameOfLife::Universe.new("pulsar")
  
  for i in 0..100
    universe.print_universe
    universe.process_universe
  end

end
