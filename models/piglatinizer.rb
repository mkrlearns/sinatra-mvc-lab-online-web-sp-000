class PigLatinizer

  def pigword(word)
      return word + 'ay' if word[0].match(/[aAeEiIoOuU]/)
      match = /\A[^aeiou]/i.match(word)
      match.post_match + match.to_s + 'ay'
  end

  def pigphrase(phrase) phrase.split.map { |w| pigword(w) }.join(' ') end

end
