class Question < Math_game
  attr_reader :num1
  attr_reader :num2

  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
  end

  def question
    return "What does #{num1} plus #{num2} equal?"
  end

  def answer
    return @num1 + @num2
  end
end
