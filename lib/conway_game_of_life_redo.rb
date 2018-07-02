require_relative "universe"

module GameOfLife
  
  universe = GameOfLife::Universe.new("glider")
  
  for i in 0..15
    system "clear"
    universe.print_universe
    sleep(1)
    universe.process_universe
  end

end
