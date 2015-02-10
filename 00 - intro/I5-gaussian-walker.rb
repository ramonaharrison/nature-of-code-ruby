import java.util.Random

def setup
  size 900, 900
  smooth
  background 0
  no_fill
  stroke 1

  @generator = Random.new
  @w = Walker.new(width, height)

end


def draw
  @w.walk
  @w.display

end

class Walker


  def initialize(width, height)
    @x = width/2
    @y = height/2
  end


  def display
    stroke(rand(255), rand(255), rand(255))
    ellipse(@x, @y, 1, 1);
    point(@x, @y)
  end


  def walk
    sd = 0.5
    mean = 2
    scale = (@generator.nextGaussian.to_f * sd) + mean

    choicex = (-1..1).to_a.sample * scale
    choicey = (-1..1).to_a.sample * scale


    @x += choicex
    @y += choicey
  end

end
