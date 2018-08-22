def caesar_cipher(str, n)
    new_str = ""

    str.each_char do |c|
        if c.match(/\w/)
            new_code = c.ord + n

            if c.match(/[a-z]/)
                c = (97 + (new_code - 97 % 26) % 26).chr
            elsif c.match(/[A-Z]/)
                c = (65 + (new_code - 65 % 26) % 26).chr
            end
        end

        new_str += c.chr
    end

    new_str
end

puts caesar_cipher("What a string!", 5)