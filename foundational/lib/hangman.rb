require './src/vocabularies'

class Hangman
  CHANCES_COUNT = 8

  def initialize
    @word = KINDERGARTEN_VOCAB.sample
    @error_count = 0
    @correct_answers = []
  end

  def play
    while @error_count < CHANCES_COUNT do
      puts "You got #{CHANCES_COUNT - @error_count} chances left."
      puts '> ' + masked_word
      guess = gets.chomp
      unless valid?(guess)
        puts "Please only input one valid character.\n\n"
        next
      end
      correct?(guess) ? save_correct_answer(guess) : increment_error_count
      break if win?
    end
    show_result
  end

  class << self
    def run
      new.play
    end
  end

  private

  def masked_word
    @word.chars.map { |c| @correct_answers.include?(c) ? c : c.replace('_') }.join(' ')
  end

  def valid?(guess)
    guess =~ /^[a-zA-Z]/ && guess.length == 1
  end

  def correct?(guess)
    @word.chars.include?(guess)
  end

  def save_correct_answer(guess)
    puts "Your guess is correct!\n\n"
    @correct_answers.push << guess
  end

  def increment_error_count
    puts "Wrong. Try another character.\n\n"
    @error_count += 1
  end

  def win?
    masked_word.chars.all? { |c| c != '_' }
  end

  def show_result
    puts win? ? 'Congrats! You win!' : "Sorry, your hangman is dead."
    puts "The answer is #{@word.upcase}."
  end
end

Hangman.run
