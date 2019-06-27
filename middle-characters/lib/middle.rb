class Middle
  def getMiddle(word)
    return '' if word.empty?

    characters = word.chars
    mid = characters.length / 2
    return characters[mid]
  end
end
