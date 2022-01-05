require './player'
require './question'

player1 = Player.new('Player 1')
puts player1.name
puts player1.get_life

question = Question.new 
puts "What does #{question.pick_number} plus #{question.pick_number} equal?"
puts "What does #{question.pick_number} plus #{question.pick_number} equal?"
puts "What does #{question.pick_number} plus #{question.pick_number} equal?"
puts "What does #{question.pick_number} plus #{question.pick_number} equal?"
puts "What does #{question.pick_number} plus #{question.pick_number} equal?"


