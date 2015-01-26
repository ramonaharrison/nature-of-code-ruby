# Random Walker in Ruby Processing
# adapted from Dan Shiffman, natureofcode.com

# The code inside setup is run once at the beginning.


def setup
  size 900, 900
  smooth
  background 0
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
    stroke(rand(255), rand(255), rand(255))
    ellipse(@x, @y, 1, 1);
    point(@x, @y)
  end

  # Walker has a 50% chance of stepping toward the mouse, otherwise takes a random step
  def walk
    if rand(10) < 5
      choicex = (-1..1).to_a.sample
      choicey = (-1..1).to_a.sample
      @x += choicex
      @y += choicey
    else
      @x = @x mouse_x
      @y = @y mouse_y
    end

  end

end
