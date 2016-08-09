#5.6- Christopher Mendoza

#Release 0

#swap first and last name
def swap_first_last(name)
  name = name.downcase
  swap_name = name.split(' ')
  swap_name[1] << ' '
  swap_name_reverse = swap_name.reverse
  swap_name_reverse_joined = swap_name_reverse.join
end

#Changing vowels aeiou to the nextg vowel and all of the consonants to the next consonant in the alphabet.
def next_letter(reversed_name)
  vowels = 'aeioua'
  consonants = 'bcdfghjklmnpqrstvwxy'
  #reversed name to array
  reversed_name_array = reversed_name.split('')
  #check if letter is vowel if so make it next vowel
  #check if letter is consonant if so make it next consonant
  reversed_name_array.map! { |letter|
    if vowels.index(letter) != nil
      new_vowel = vowels.index(letter) + 1
      p letter = vowels[new_vowel]
    elsif consonants.index(letter) != nil
      new_consonant = consonants.index(letter) + 1
      letter = consonants[new_consonant]
    else
      letter = letter
    end
  }
  reversed_name_array_joined = reversed_name_array.join
end



#driver code
p reversed_name = swap_first_last("Felicia Torres")
p next_letter(reversed_name)

