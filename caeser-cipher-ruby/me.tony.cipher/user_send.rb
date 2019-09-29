require_relative 'cipher_interpreter'
require_relative 'cipher'
require_relative 'unknown_interpreter'

cipher = Cipher.new
cipherInterpreter = CipherInterpreter.new
unknownInterpreter = UnknownInterpreter.new

while
    p 'Insira o texto: '
    text = gets.chomp.to_s

    p 'Insira o numero: '
    shift = gets.chomp.to_i

    cipher.text = text
    cipher.shift = shift

    system 'clear'

    puts '==========[CIFRA DE CESAR]=========='
    puts "Frase criptografada: #{cipherInterpreter.encryptor(cipher.text, cipher.shift).join}"
    puts "Frase original: #{text} | Numero utilizado: #{shift}"
    puts '==========[CIFRA DE CESAR]=========='
end
