puts "Do you wish to encode or decode? Type your selection."
encode_decode = gets.chomp

puts "Please enter a message."
message = gets.chomp.downcase

puts "Please enter the number you'd like to shift."
number = gets.chomp.to_i #the .to_i converts string to integer

def encrypted_message(message, number) #defines function with 2 arguments
	alphabet = ('a'..'z').to_a #creates alphabet array from 26 alpha strings
	key = Hash[alphabet.zip(alphabet.rotate(number))] #creates hash that takes in the alphabet array, rotating it however many times from user input. The zip combines the 2 arrays, pairing each number with a letter.
	message.each_char.inject("") { |new_msg, char| new_msg + key[char] } #takes the user's message & separates it into individual characters. inject sends each character thru the block |new_msg, char| until there are no more characters from user's input message
end

def decrypted_message(message, number)
	alphabet = ('a'..'z').to_a 
	key = Hash[alphabet.zip(alphabet.rotate(- number))] #for some reason, this only works as a capital H in hash...
	message.each_char.inject("") { |new_msg, char| new_msg + key[char] }
end

if encode_decode == "encode"
	puts encrypted_message(message, number)
elsif
	encode_decode == "decode"
	puts decrypted_message(message, number)
end

