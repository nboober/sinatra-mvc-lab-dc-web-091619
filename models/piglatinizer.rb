class PigLatinizer

    @@vowel = ["a","e","i","o","u", "A", "E", "I", "O", "U"]


    def initialize
    end

   def pig_sentence(string)
    array = string.split(" ")
    latinized_sentence = array.map{|word| single_word(word) }.join(" ")
   end


    def single_word(string)
        array = string.split("")
        if @@vowel.include?(array.first) 
            array.push("way")
            new_string = array.join
        else
            first_vowel = array.find{ |letter| @@vowel.include?(letter)}
            index = array.find_index(first_vowel)
            pieces = array.shift(index)
            array.push(pieces)
            array.push("ay")
            new_string = array.flatten.join
        end
        new_string
    end

    def piglatinize(string)
        if string =~ /\s/
            final = pig_sentence(string)
        else
            final = single_word(string)
        end
        final
    end

        
    
end