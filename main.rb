require "./game.rb"
require "./player.rb"
require "./turn.rb"

player1 = Player.new('one')
player2 = Player.new('two')

game = Game.new(player1, player2)

game.start

game.print_winner