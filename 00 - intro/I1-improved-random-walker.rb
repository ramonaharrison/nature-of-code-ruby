# Random Walker in Ruby Processing
# adapted from Dan Shiffman, natureofcode.com

# The code inside setup is run once at the beginning.
def setup
  size 800, 800
  smooth
  background 255
  no_fill
  stroke 1

  #Initializes a new walker
  @w = Walker.new(width, height)

end

# The code inside of draw is drawn over and over
def draw
  @w.walk
  @w.display
end

class Walker

  # New walkers are created in the center of the canvas
  def initialize(width, height)
    @x = width/2
    @y = height/2
  end

  # Walker displays itself as a black dot
  def display
    stroke 0
    point(@x, @y)
  end

  # Directs the walker to take a random step in any of 8 possible directions
  # or stay still
  def walk
    choicex = (-1..1).to_a.sample
    choicey = (-1..1).to_a.sample

    @x += choicex
    @y += choicey
  end

end
