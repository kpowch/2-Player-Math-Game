# This file contains the bulk of the game functionality

require_relative 'game_constants'

class Game
  def initialize
    @master = MathGame::GAME_MASTER
    @player1 = nil
    @player2 = nil
    @current_player = nil
    @continue_game = true
    @turn = 0
  end

  def start_game
    @master.speak(MathGame::INTRO)
    set_players
    @current_player = @player1

    while @continue_game
      @master.speak("\n---------- NEW QUESTION ----------")
      get_question
      switch_players
    end
  end

  private

  def set_players
    @master.speak("Player 1, please enter your name: ")
    name1 = @master.prompt
    name1 = "Player 1" if name1 == ""
    @player1 = MathGame::PLAYER.new(name1)

    @master.speak("Player 2, please enter your name: ")
    name2 = @master.prompt
    name2 = "Player 2" if name2 == ""
    @player2 = MathGame::PLAYER.new(name2)

    @master.speak("Your names are #{@player1.name} and #{@player2.name}")
  end

  def get_question
    question = MathGame::QUESTION.make_question
    @master.speak("#{@current_player.name}: #{question}")
    get_answer
  end

  def get_answer
    answer = @master.prompt
    eval_answer(answer)
  end

  def eval_answer(answer)
    if (answer.to_i == MathGame::QUESTION.answer)
      increment_correct_answers(@current_player)
    else
      decrement_lives(@current_player)
    end
    show_stats
    player_dead?(@current_player)
  end

  def increment_correct_answers(player)
    @master.speak("Yay!! You answered correct!")
    player.correct_answers += 1
  end

  def decrement_lives(player)
    @master.speak("Yea, no.")
    player.lives -= 1
  end

  def player_dead?(player)
    (player.lives <= 0) ? game_end : false
  end

  def show_stats
    @master.speak("#{@player1.name}: #{@player1.lives}/3 vs. #{@player2.name}: #{@player2.lives}/3")
  end

  def switch_players
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def get_winner
    @player1.lives > @player2.lives ? @player1 : @player2
  end

  def game_end
    winner = get_winner
    @master.speak("And the winner is............. #{winner.name.upcase}!!!!")
    @master.speak("who won with #{winner.correct_answers} correct answers.")
    @master.speak("*Crowd*: WOOOOOOOOOOO")
    @continue_game = false
    @master.speak("\n---------- GAME OVER ----------")
    @master.speak("Want to play again? y/n")
    play_again = @master.prompt

    if play_again == "y"
      @continue_game = true
      start_game
    else
      @master.speak("Fine. Then bye.")
    end
  end
end
