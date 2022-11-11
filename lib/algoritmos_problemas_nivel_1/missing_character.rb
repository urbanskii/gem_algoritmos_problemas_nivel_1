=begin
Pangram is a sentence containing every letter in the English alphabet. Given a string, find all characters that are missing from the string, i.e.,
the characters that can make the string a Pangram. We need to print output in alphabetic order.
=end

def find_miss_charac(sentence)
  arr_alfa = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

  arr_miss = []
  i = 0
  x = 0
  validador = false

  arr_alfa.each do i
  sentence.each do x
  if arr_alfa[i] != sentence[x]
    validador = true
  elsif arr_alfa[i] == sentence[x]
    validador = false
    break if validador == false
  end
  x += 1
  end

  if validador == true
    arr_miss[i] = arr_alfa[i]
  end
  validador = false
  x = 0
  i += 1

  end

  arr_miss = arr_miss.reject { |item| item.nil? || item == '' }
  arr_miss = arr_miss.join(', ')
  return arr_miss

end




sentence = 'welcome to geeksforgeeks'.upcase.split(//)
sentence2 = 'The quick brown fox jumps'.upcase.split(//)
sentence3 = 'The quick brown fox jumps over the dog'.upcase.split(//)

p "Missing characters to make a string Pangram: #{find_miss_charac(sentence)}"
p "Missing characters to make a string Pangram: #{find_miss_charac(sentence2)}"
p "Missing characters to make a string Pangram: #{find_miss_charac(sentence3)}"