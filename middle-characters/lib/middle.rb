class Middle
  def getMiddle(word)
    return '' if word.empty?

    characters = word.chars
    length = characters.length

    if length % 2 == 0 #even (return middle two)
      mid_chars = ''
      mid_chars += characters[length / 2 - 1] + characters[length / 2]
    else #odd (return middle one)
      mid_chars = characters[length / 2 ]
    end

    return mid_chars
  end
end
