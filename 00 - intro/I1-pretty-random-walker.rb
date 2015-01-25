# Random Walker in Ruby Processing
# adapted from Dan Shiffman, natureofcode.com

# The code inside setup is run once at the beginning.


def setup
  size 900, 900
  smooth
  background 0
  no_fill
  stroke 1

  $r = 255
  $g = 255
  $b = 255

  #Initializes a new walker
  @w = Walker.new(width, height)

end

# The code inside of draw is drawn over and over
def draw
  @w.walk
  @w.display


  if mouse_x < 300 && $r <= 255
    $r += 4
  end
  if mouse_x < 600 && $g <= 255
    $g += 4
  end
  if mouse_x < 900 && $b <= 255
    $b += 4
  end

  if mouse_y > 450 && 0 < $r && 0 < $g && 0 < $b
    $r -= 8
    $g -= 8
    $b -= 8
  end


end

class Walker

  # New walkers are created in the center of the canvas
  def initialize(width, height)
    @x = width/2
    @y = height/2
  end

  # Walker displays itself as a black dot
  def display
    stroke($r, $g, $b)
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
