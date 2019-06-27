# Get the Middle Character(s)

## Requirements
The program runs in a repl like IRB or in the browser console

It's fine to use Ruby or JavaScript.

Your job is to return the middle character of a word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

Acceptance Criteria
get_middle("test") # => "es"
get_middle("testing") # => "t"
get_middle("middle") # => "dd"
get_middle("A") # => "A"
get_middle("of") # => "of"

## Tests

- Enter a string => returns a string
- Enter an odd word => returns the middle character
- Enter an even word => returns the middle two letters

## Overview

- Must work in IRB
middle = Middle.new
middle.getMiddle('tests') => 's'
