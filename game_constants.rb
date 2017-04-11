# Creates class and defines all classes (namespaced) within a constant

require_relative 'player'
require_relative 'question'
require_relative 'gamemaster'
# require_relative 'turn'

class MathGame
  INTRO = "Welcome to MATHGAME(TM).\n"

  GAME_MASTER = GameMaster.new
  PLAYER = Player # Note: this doesn't have a `.new` because it requires arguments
  QUESTION = Question.new
  # TURN = Turn.new
end
