class ResultPrinter
  def initialize(results_path)
    if File.exist?(results_path)
      file = File.new(results_path, "r")
      @results = file.readlines
      file.close
    end
  end

  def print_result(test)
    case test
      when test.user_score >= 30 then  @results[0]
      when test.user_score >= 25 then  @results[1]
      when test.user_score >= 19 then  @results[2]
      when test.user_score >= 14 then  @results[3]
      when test.user_score >= 9  then  @results[4]
      when test.user_score >= 4  then  @results[5]
    else
      @results[6]
    end
  end
end
