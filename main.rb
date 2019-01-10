require_relative 'lib/test'
require_relative 'lib/print_result'

current_path = __dir__
file_questions = current_path + "/data/questions.txt"
dir_results = current_path + "/data/score_results/"

test = Test.new(file_questions)
test.run_test

result = PrintResult.new(test.score, dir_results)
result.print_result
