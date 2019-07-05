class Sudoku
  def check(sudoku)
    raise ArgumentError, "Invalid length" if sudoku.chars.length != 81
    raise ArgumentError, "Incomplete" if sudoku.chars.include?('0')
    
    true
  end
end
