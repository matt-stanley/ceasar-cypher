$lower_letters = Array ('a'..'z')
$upper_letters = Array ('A'..'Z')

def cipher(str, shift)
  stringArr = str.split("")
  result = ""

  stringArr.each do |letter|
    lower_index = $lower_letters.index(letter)
    upper_index = $upper_letters.index(letter)
    if lower_index
      new_index = (lower_index + shift) % 26
      result.concat($lower_letters[new_index])
    elsif upper_index
      new_index = (upper_index + shift) % 26
      result.concat($upper_letters[new_index])
    else
      result.concat(letter)
    end
  end
  result
end

p cipher("Easy", 25)