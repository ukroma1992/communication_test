class PrintResult
  attr_accessor :score


  def initialize(score, file_path)
    @score = score
    @file_path = file_path
  end

  def get_file_info(file_name)
    File.readlines(@file_path + file_name)
  end

  def print_result
    puts "Ваш результат: #{@score}\n"
    case @score
    when 30..32 then puts get_file_info('scores_30-31.txt')
    when 25..29 then puts get_file_info('scores_25-29.txt')
    when 19..24 then puts get_file_info('scrores_19-24.txt')
    when 14..18 then puts get_file_info('scores_14-18.txt')
    when 9..13 then puts get_file_info('scores_9-13.txt')
    when 4..8 then puts get_file_info('scores_4-8.txt')
    else puts get_file_info('scores_less-3.txt')
    end
  end
end
