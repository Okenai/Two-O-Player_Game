require "./question.rb"

class Turn
  attr_accessor :count, :player, :question 
  def initialize player, count
    @player = player
    @count = count
    @question = Question.new
  end
  
  def next_player player1, player2 
    question.format player
    question.check_answer player
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    puts "----- NEW TURN -----"
   
  end

end