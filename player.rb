# Creates player class with attrbutes like lives, corrent answers, and a name

class Player
  attr_accessor :lives, :correct_answers
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
    @correct_answers = 0
  end
end
