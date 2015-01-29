
def setup

  size 800, 800
  background 255
  @generator = Random.new

end

def draw
  sd = 100
  mean = 400
  x = @generator.nextGaussian.to_f * sd * mean
  y = @generator.nextGaussian.to_f * sd * mean
  paint_spot = Splatter.new(x, y)

end

class Splatter

  def initialize(x, y)
    fill(rand(255), rand(255), rand(255))
    ellipse(x, y, 20, 20);
  end

end
