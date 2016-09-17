class Admin
  private
  def password
    @password = "cavangxinhdep"
  end

  public
  def wrongpass
    return "Wrong password, the game has been exit automatically.
    Run the game again and try another password!"
  end
  def signin(input_password)
    if  input_password == password
      puts "Sign in successfully, please setup the key..."
    else
      wrongpass
      exit
    end
  end

end
class The_puzzle
  def setup(key)
    @key=key
    @the_puzzle = @key.upcase.split("")
    @answer = @the_puzzle.map { |e| "[X]"  }
  end
  def show_the_puzzle
    puts "This puzzle has #{@key.length} letters"
    puts ""
    @answer.each {|e| print "#{e} "}
    puts ""
    puts ""
  end
  def play_the_game
    loop do
      print "Which letter do you guess? "
      guess = gets.chomp.upcase
      i = 0

      loop do
        if guess == @the_puzzle[i]
          @answer[i] = guess
        end
      i += 1
      break if i > @the_puzzle.length
      end
    puts ""
    if @answer.amount_of_correct_letters(guess) > 0
      puts "CORRECT! We have #{@answer.amount_of_correct_letters(guess)} #{guess} letters "
    else
      puts "WRONG! Try again"
    end
    @answer.each {|e| print "#{e} "}
    puts ""
    puts ""
    break if @answer == @the_puzzle
    end

    puts ""
    puts "Congratulation!"
  end
end
class Array
  def amount_of_correct_letters(letter)
    inject(0) {|count,x| letter == x ? count += 1 : count }
  end
end
