# Counts each time a random number is picked and graphs it
# as the height of a rectangle

def setup
  size 640, 240
  @random_counts = Array.new(20, 0)
end

def draw
  background 255

  index = rand(@random_counts.length)
  @random_counts[index] += 1

  stroke 0
  fill 175
  w = width/@random_counts.length

  x = 0
  while x < @random_counts.length
    rect x * w, height - @random_counts[x], w - 1, @random_counts[x]
    x += 1
  end

end
