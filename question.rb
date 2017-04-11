# Creates question class that has a read-accessible question and answer

class Question
  attr_reader :current_question, :answer

  def initialize
    @current_question = nil
    @answer = nil
  end

  def make_question
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    set_answer(num1, num2)
    @current_question = "What is #{num1} plus #{num2}?"
  end

  private

  def set_answer(num1, num2)
    @answer = num1 + num2
  end
end
