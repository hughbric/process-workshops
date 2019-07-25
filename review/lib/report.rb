class Report
  def calculate(report)
    raise ArgumentError, 'Input is empty' if report == ""
    
    output = ''
    report_words = report.split(',')

    output += "green: #{report_words.count('green')}, amber: #{report_words.count('amber')}, red: #{report_words.count('red')}"
  end

end