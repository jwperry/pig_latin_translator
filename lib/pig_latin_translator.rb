require 'pry'

def translate(phrase)
  if is_a_vowel?(phrase[0])
    phrase + "-way"
  else
    convert(phrase)
  end
end

def is_a_vowel?(phrase)
  ["a", "e", "i", "o", "u"].include?(phrase[0].downcase)
end

def convert(phrase)
  leading_consonants = []
  leading_consonants << phrase.slice!(0) until is_a_vowel?(phrase)
  phrase + "-" + leading_consonants.join + "ay"
end

phrase = ""

until phrase == "exit!"
  puts "Enter a pig latin phrase to translate. Type 'exit!' to quit."
  phrase = gets.chomp
  puts translate(phrase.downcase) unless phrase == "exit!"
end