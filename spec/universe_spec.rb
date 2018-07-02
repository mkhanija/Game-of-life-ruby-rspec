require "./lib/universe"

describe "Universe" do
  it "can create a universe with given values for the height, width and the grid" do
    
    grid_array = Array.new(5){Array.new(5, 0)}

    universe = GameOfLife::Universe.new(5, 5, grid_array)
    
    expect(universe.height).to eq(5)
    expect(universe.width).to eq(5)
    expect(universe.grid).to eq(grid_array)
  end
end
