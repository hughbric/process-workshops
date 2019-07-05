# Sudoku

A sudoku solver.

## Input table

- A valid sudoku set of rows
Input:
sudoku.check("123456789123456789123456789123456789123456789123456789123456789123456789123456789")
Output:
true

- An incomplete sudoku (contains 0)
Input:
sudoku.check("023456789123456789123456789123456789123456789123456789123456789123456789123456789")
Output:
ErrorMessage - Unfilled

- Too many characters throws an error
Input:
sudoku.check("123456789123456789123456789123456789123456789123456789123456789123456789123456789000")
Output:
ErrorMessage - Invalid length
