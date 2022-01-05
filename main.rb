require './player'
require './question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

game_over = false
question = Question.new
current_player = player1
while !game_over
  question1 =  question.pick_number
  question2 =  question.pick_number

  sum = question1 + question2
  puts "#{current_player.name}: What does #{question1} plus #{question2} equal?"
  print "> "
  input = gets.chomp.to_i
  if input == sum
    puts "#{current_player.name}: YES! You are correct."
  else
    current_player.reduce_life
    puts "#{current_player.name}: Seriously? No!"
    if current_player.get_life <= 0
      puts "Game Over"
      game_over = true
    end
  end
  puts "#{player1.name}: #{player1.get_life}/3 vs #{player2.name}: #{player2.get_life}/3"
  if current_player == player1
    current_player = player2
  else
    current_player = player1
  end
  if !game_over
    puts "------ NEW TURN -------"
  else
    if player1.get_life > player2.get_life
      puts "#{player1.name} WINS with  #{player1.get_life}/3"
    else
      puts "#{player2.name} WINS with  #{player2.get_life}/3"
    end
  end
end