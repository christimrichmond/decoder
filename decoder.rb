  def initialize(shift, alphabet = ('a'..'z').to_a.join + ('A'..'Z').to_a.join)
    @alphabet = alphabet
    @cipher = alphabet.chars.rotate(shift).join
  end

  def encrypt(text)
    text.tr(@alphabet, @cipher)
  end

  def decrypt(text)
    text.tr(@cipher, @alphabet)
  end
end