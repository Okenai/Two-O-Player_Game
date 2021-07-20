require "./turn.rb"

class Game
  attr_accessor :index, :current_turn, :player1, :player2, :turns
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turns = []
    @current_turn = Turn.new player1, 1
  end
  
  def start
    self.turns << current_turn
    while player1.lives > 0 && player2.lives > 0 
      assign_player
      self.turns << current_turn
      current_turn.next_player player1, player2
    end
    
  end
  
  def print_winner 
    winner = turns[turns.length-2].player
    puts "Player #{winner.name} wins with a score #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  private
  def assign_player
    if (current_turn.count % 2 == 0)
      self.current_turn = Turn.new player2, current_turn.count + 1
    else
      self.current_turn = Turn.new player1, current_turn.count + 1
    end
  end
end