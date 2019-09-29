class CipherInterpreter
  def encryptor(text, shift)
    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

    encryptor = non_caps.merge(caps)

    text.chars.map { |c| encryptor.fetch(c, c) }
  end
end