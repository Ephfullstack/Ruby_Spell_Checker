require "Spell"

describe Spell do

    before(:each) do 
        @Spell = Spell.new
    end
    context 'correctly spelled words' do 

        it 'returns currently spelled word as it is' do

            expect(@Spell.check("Hello")).to eq "Hello"
    
        end

        it "returns words as they are if they match enteries in the word_bank" do
            expect(@Spell.check("Hello world")).to eq "Hello world"
        end
    end 
    

    context 'incorrectly spelled words' do 
        it 'contains word bank when initialised' do
            expect(@Spell.word_bank).to be_a Array
        end
    
    end 


    context 'edgecases' do
        it 'return word surronded by ~ if it does not match a word in word bank array' do
            expect(@Spell.check("a")).to eq '~a~'
        end 

        it "return errorif input contains anything other than a string" do
            expect(@Spell.check(1)).to eq "invalid input"
        end
    end
   

end