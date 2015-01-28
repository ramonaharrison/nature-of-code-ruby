#
# Snake
#


def setup
  size 400, 400
  smooth
  background 0, 0, 0
  no_fill
  stroke 1

  #Initializes a new walker
  @w = Walker.new(width, height)

end

# The code inside of draw is drawn over and over
def draw
    @w.walk

    load_pixels

    if pixels[$y*width+$x] != 0
      text_size(32)
      text("you lose!", 10, 30)
      no_loop
    else
      @w.display
    end

end

class Walker

  # New walkers are created in the center of the canvas
  def initialize(width, height)
    $x = width/2
    $y = height/2
  end

  # Walker displays itself as a black dot
  def display
    stroke(rand(255), rand(255), rand(255))
    ellipse($x, $y, 1, 1);
    point($x, $y)
  end


  def walk
      if mouse_x < $x
        $x -= 1
      else
        $x += 1
      end

      if mouse_y < $y
        $y -= 1
      else
        $y += 1
      end
  end


end
