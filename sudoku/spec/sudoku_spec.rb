require 'sudoku'

describe Sudoku do
  it 'returns true when rows are correct length' do
    sudoku = Sudoku.new
    input = "123456789123456789123456789123456789123456789123456789123456789123456789123456789"
    expect(sudoku.check(input)).to eq(true)
  end

  it 'raises an argument error if input string is too long' do
    sudoku = Sudoku.new
    input = "111123456789123456789123456789123456789123456789123456789123456789123456789123456789"
    expect { sudoku.check(input) }.to raise_error(ArgumentError, "Invalid length")
  end

  it 'raises an argument error if it is incomplete (contains 0)' do
    sudoku = Sudoku.new
    input = "023456789123456789123456789123456789123456789123456789123456789123456789123456789"
    expect { sudoku.check(input) }.to raise_error(ArgumentError, "Incomplete")
  end

  xit 'returns false when each row has repeat numbers 1-9' do
    sudoku = Sudoku.new
    input = "113456789123456789123456789123456789123456789123456789123456789123456789123456789"
    expect(sudoku.check(input)).to eq(false)
  end
end
