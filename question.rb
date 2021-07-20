class Question
  attr_accessor :answer, :numbers

  def initialize
    @numbers = [rand(10), rand(10)]
    @answer = numbers[0] + numbers[1] 
  end

  def format player
    puts "Player #{player.name}: What does #{numbers[0]} plus #{numbers[1]} equal?"
  end

  def check_answer player
    player_answer = gets.chomp
    if answer.to_i == player_answer.to_i
      puts "Player #{player.name}: YES! You are correct"
    else
      puts "Player #{player.name}: Seriously? No!"
      player.reduce_live
    end
  end
end