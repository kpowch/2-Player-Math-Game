 # Creates GameMaster class that prints text to CLI or gets user input from CLi

 class GameMaster
  def speak(text)
    puts text
  end

  def prompt
    answer = gets.chomp
  end
end
