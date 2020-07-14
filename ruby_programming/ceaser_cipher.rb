def ceaser_cipher(str, shift)
  ascii_array = str.chars.map(&:ord)

  new_ascii_values = ascii_array.map do |val|
    if (65..90).include?(val)
      if val + shift > 90
        val + shift - 26
      else
        val + shift
      end
    elsif (97..122).include?(val)
      if val + shift > 122
        val + shift - 26
      else
        val + shift
      end
    else
      val = val
    end
  end

  new_chars_array = new_ascii_values.map(&:chr).join
end

ceaser_cipher("What a string!", 5)
