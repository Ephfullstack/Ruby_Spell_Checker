require "Spell"

describe Spell do

    before(:each) do 
        @Spell = Spell.new
    end

    it 'returns currently spelled word as it is' do

        expect(@Spell.check("Hello")).to eq "Hello"

    end

    
    it 'contains word bank when initialised' do
        expect(@Spell.word_bank).to be_a Array
    end

    it 'return word surronded by ~ if it does not match a word in word bank array' do
        expect(@Spell.check("a")).to eq '~a~'
    end 
end