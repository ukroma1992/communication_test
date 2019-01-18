class Test
  attr_reader :user_score

  def initialize(question_path)
    if File.exist?(question_path)
      file = File.new(question_path, "r")
      @questions = file.readlines
      file.close
    end

    @user_score = 0
    @current_question = 0
  end

  def ask_question
    @questions[@current_question]
  end

  def count_user_answer(user_input)
    if user_input == "да"
      @user_score += 2
    elsif user_input == "иногда"
      @user_score += 1
    end
    
    @current_question += 1
  end

  def finished?
    @current_question >= @questions.length
  end
end
