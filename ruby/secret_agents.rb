#4-6 Christopher Mendoza & Krista Prokopczyk

def encrypt(string)
  string = string
  encrypt_string = ""
  index_counter = 0
  until index_counter == string.length
    encrypt_string[index_counter] = string[index_counter].next
    index_counter += 1
  end
  return encrypt_string
end

def decrypt(string)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  string = string
  decrypt_string = ""
  index_counter = 0
  until index_counter == string.length
    decrypt_string[index_counter] = alpha[alpha.index(string[index_counter]) - 1 ]
    index_counter += 1
  end
  return decrypt_string
end

#DRIVER CODE

#encrypt("abc") should return "bcd"
#p encrypt("abc")
#encrypt("zed") should return "afe"
#p encrypt("zed")
#decrypt("bcd") should return "abc"
#p decrypt("bcd")
#decrypt("afe") should return "zed"
#p decrypt("afe")
#nested call should work because it works from the "inside out" of the parenthases.
#p decrypt(encrypt("swordfish"))

# USER INTERFACE
puts "Would you like to encrypt(1) or decrypt(2)"
selection = gets.to_i
puts "Please Enter Password"
password = gets.chomp

if selection == 1
  encrypted_pass = encrypt(password)
  puts "The encrypted password is #{encrypted_pass}"
  elsif selection == 2
    decrypted_pass = decrypt(password)
    puts "The decrypted password is #{decrypted_pass}"
  else
    puts "I don't understand"
end