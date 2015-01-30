import java.util.Random


def setup

  size 800, 800
  background 212, 238, 255
  @generator = Random.new

end

def draw

  sd = width/8
  mean = height/2

  x = (@generator.nextGaussian.to_f * sd) + mean
  y = (@generator.nextGaussian.to_f * sd) + mean
  paint_spot = Splatter.new(x, y)

end

class Splatter

  def initialize(x, y)
    no_stroke
    fill(rand(255), rand(255), rand(255))
    ellipse(x, y, 10, 30);
  end

end
