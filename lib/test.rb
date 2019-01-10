class Test
  attr_accessor :score


  def initialize(file_path)
    @score = 0
    @questions = File.readlines(file_path)
  end

  def count_score(user_choice)
    if user_choice == "a"
      @score += 2
    elsif user_choice == "c"
      @score += 1
    else
      @score += 0
    end
  end

  def check_user_input
    user_choice = gets.chomp.downcase
    puts user_choice

    while user_choice != "a" && user_choice != "b" && user_choice != "c"
      user_choice = gets.chomp.downcase
    end
    user_choice
  end

  def run_test
    choices = ["a - да", "b - нет", "c - иногда"]
    puts "Пройдите тест «Ваш уровень общительности»."

    @questions.each do |question|
      puts question
      puts choices
      user_choice = check_user_input
      count_score(user_choice)
    end
  end
end
