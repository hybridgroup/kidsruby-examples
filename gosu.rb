# Type in your code just below here:
require 'gosu'
class MyGame < Gosu::Window
  def initialize
    super(500, 500, false)
    @count = 0
    @position = 50
  end
  def update
    @text = Gosu::Image.from_text(self,
      "KidsRuby",
      "Sans",
      100)
    @count = @count + 1
    if @count > 300
      @position = rand(100)
      @count = 0
    else
      @position = @position + 1
    end
  end
  def draw
    @text.draw(@position, @position, 1)
  end
end

window = MyGame.new
window.show