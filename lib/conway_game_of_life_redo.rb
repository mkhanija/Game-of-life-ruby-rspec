require_relative "universe"

module GameOfLife
  
  universe = GameOfLife::Universe.new("pulsar")
  
  for i in 0..100
    system "clear"
    universe.print_universe
    sleep(0.2)
    universe.process_universe
  end

end
