class Report
  def calculate(report)
    raise ArgumentError, 'Input is empty' if report == ""
    
    output = ''
    total = 0
    report_words = report.split(',')

    total = report_words.count('green') + report_words.count('amber') + report_words.count('red')
    uncounted = report_words.length - total
   
    if report_words.count('green') > 0 
      output += "green: #{report_words.count('green')}, "
    end

    if report_words.count('amber') > 0 
      output += "amber: #{report_words.count('amber')}, "
    end

    if report_words.count('red') > 0 
      output += "red: #{report_words.count('red')}"
    end

    if uncounted > 0 
      output += ", uncounted: #{uncounted}"
    end
    output
  end
end