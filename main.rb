#-----------------Setup the Game----------------------
require_relative 'admin.rb'

#-----------------Start the Game----------------------
puts "Hello there,
please sign in to the system to setup the game!"
print "Password:"

admin1 = Admin.new
admin1.signin(gets.chomp)
puzzle1 = The_puzzle.new
puzzle1.setup(gets.chomp)
puzzle1.show_the_puzzle

puts "Guess it, 1 letter per time"
print "\n"
puzzle1.play_the_game
