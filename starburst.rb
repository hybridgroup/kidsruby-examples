# Type in your code just below here:
Turtle.draw do
  background black
  pencolor red
  100.times do
    distance = rand(100)
    turnright rand(25)
    forward distance
    backward distance
  end
end
