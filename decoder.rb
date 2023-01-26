$decode_hash = {
'.-' => 'A',
'-...' => 'B',
'-.-.' => 'C',
'-..' => 'D',
'.' => 'E',
'..-.' => 'F',
'--.' => 'G',
'....' => 'H',
'..' => 'I',
'.---' => 'J',
'-.-' => 'K',
'.-..' => 'L',
'--' => 'M',
'-.' => 'N',
'---' => 'O',
'.--.' => 'P',
'--.-' => 'Q',
'.-.' => 'R',
'...' => 'S',
'-' => 'T',
'..-' => 'U',
'...-' => 'V',
'.--' => 'W',
'-..-' => 'X',
'-.--' => 'Y',
'--..' => 'Z',
'-----' => '0',
'.----' => '1',
'..---' => '2',
'...--' => '3',
'....-' => '4',
'.....' => '5',
'-....' => '6',
'--...' => '7',
'---..' => '8',
'----.' => '9'
}

def decode_char(message)
    return $decode_hash[message]
end
    
def decode_word(message)
    result = ""
    word = message.split(' ')
    word.each do |char|
        result = "#{result}#{decode_char(char)}"
    end
    return result
end

def decode(message)
    #split by 3 spaces 
    #call decode_word with each word    
    words = message.split('  ')
    decoded_message = ''
    words.each do |word|
        decoded_word = decode_word(word)
        decoded_message = "#{decoded_message}#{decoded_word} "
  end
  decoded_message.strip
end

print decode_word("-- -.--")
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')