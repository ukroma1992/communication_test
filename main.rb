require_relative 'lib/test'
require_relative 'lib/result_printer'

questions_path = __dir__ + "/data/questions.txt"
results_path = __dir__ + "/data/results.txt"

test = Test.new(questions_path)
result = ResultPrinter.new(results_path)

puts "Введите ваше имя: "
name = STDIN.gets.chomp

puts "Здравствуй #{name}! Ответь пожалуйта на вопросы"

until test.finished?
  puts test.ask_question

  user_input = nil

  while user_input != "да" && user_input != "нет" && user_input != "иногда"
    puts "Введите 'да', 'нет' или 'иногда' и нажмите Enter "
    user_input = STDIN.gets.chomp.downcase
  end

  test.count_user_answer(user_input)
end

puts "Ваш результат: #{test.user_score} балла"
puts result.print_result(test)
