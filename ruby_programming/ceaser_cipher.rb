def ceaser_cipher(string, num)
  ascii = string.downcase.chars.map(&:ord)

  shifted = ascii.map{ |c|
    if c > 47
      then ((c + num) < 123 ? (c + num) : (c + num) - 26)
    else
      c
    end
  }

  new_string = shifted.map { |c| c.chr }.join

  puts new_string
end

ceaser_cipher("What a string!", 5)
