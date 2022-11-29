class Spell

    attr_reader :word_bank

    def initialize
        @word_bank = ["hello", "world", "where", "are", "the", "biscuits"];
    end
    
    def check(string)
        if string.is_a? String
            words = string.split(" ")



            newWords = words.map { |word|

                if @word_bank.include?(word.downcase)
                        word = word
                    else 
                        word =  "~#{word}~"
                end 
            }

            return newWords.join(" ")
        else
            return "invalid input"
        end  
        
    end
end