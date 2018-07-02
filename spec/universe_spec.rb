require "./lib/universe"

describe "Universe" do
  it "can create a universe with a given input file" do
    
    grid_array = Array.new(5){Array.new(5, 0)}

    universe = GameOfLife::Universe.new("test_initialize")
    
    expect(universe.height).to eq(5)
    expect(universe.width).to eq(5)
    expect(universe.grid).to eq(grid_array)
  end

  it "can count the number of neighbors of different cells in a grid" do
    grid_array = Array.new(3){Array.new(3, 0)}

    universe = GameOfLife::Universe.new("test_neighbor")

    expect(universe.count_neighbors(0, 0)).to eq(2)
    expect(universe.count_neighbors(0, 1)).to eq(4)
    expect(universe.count_neighbors(0, 2)).to eq(2)
    expect(universe.count_neighbors(1, 0)).to eq(4)
    expect(universe.count_neighbors(1, 1)).to eq(8)
    expect(universe.count_neighbors(1, 2)).to eq(4)
    expect(universe.count_neighbors(2, 0)).to eq(2)
    expect(universe.count_neighbors(2, 1)).to eq(4)
    expect(universe.count_neighbors(2, 2)).to eq(2)
  end

  it "can process the blinker universe according to each cell and it's neighbors" do
    blinker_final_stage = Array.new(3){Array.new(3, 0)}

    blinker_final_stage[0][1] = 1
    blinker_final_stage[1][1] = 1
    blinker_final_stage[2][1] = 1

    universe = GameOfLife::Universe.new("blinker")
    expect(universe.process_universe).to eq(blinker_final_stage)
  end

  it "can process the block universe according to each cell and it's neighbors" do
    block_array = Array.new(3){Array.new(3, 0)}
    
    block_array[0][0] = 1
    block_array[0][1] = 1
    block_array[1][0] = 1
    block_array[1][1] = 1

    universe = GameOfLife::Universe.new("block")
    expect(universe.process_universe).to eq(block_array)
  end

  it "can process the tub universe according to each cell and it's neighbors" do
    tub_array = Array.new(3){Array.new(3, 0)}
    
    tub_array[0][1] = 1
    tub_array[1][0] = 1
    tub_array[1][2] = 1
    tub_array[2][1] = 1

    universe = GameOfLife::Universe.new("tub")
    expect(universe.process_universe).to eq(tub_array)
  end

end
