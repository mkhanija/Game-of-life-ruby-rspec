module GameOfLife
  class Universe
    def initialize(height, width, grid)
      @height = height
      @width = width
      @grid = grid 
    end

    def height()
      @height
    end

    def width()
      @width
    end

    def grid() 
      @grid
    end
    
    

  end
end
