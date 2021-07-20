class Player
  def initialize
    @lives = 3
  end
  
  def reduce_live
    @lives -= 1
  end

end

player1 = Player.new
player2 = Player.new

@players = [player1, player2]

@current_player_index = 0

def next_player index
  index == 0 ? 1 : 0
 return @players[index]
end

def generate_question
  
  puts "Player #{@current_player_index + 1}: What does #{rand(10)} plus #{rand(10)} equal?"
end

def check_answer
  answer = @numbers[0].to_i + @numbers[2].to_i
  puts "What do you think is the correct answer? "
  opponent_answer = gets.chomp
  if answer == opponent_answer.to_i 
    puts "Player #{@current_player_index + 1}: YES! You are correct"
  else
    puts "Player #{@current_player_index + 1}: Seriously? No!"
  end
end


def turn
  generate_question
  check_answer
  (@players[@current_player_index].@lives - 1)
end

turn

puts player1.lives
puts player2.lives